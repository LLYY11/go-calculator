package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)

	fmt.Println("Go 计算器")
	fmt.Println("支持的操作: +, -, *, /")
	fmt.Println("输入 'exit' 退出程序")
	fmt.Println("-------------------")

	for {
		fmt.Print("请输入表达式 (例如: 3 + 5): ")

		if !scanner.Scan() {
			break
		}

		input := strings.TrimSpace(scanner.Text())

		if input == "exit" {
			fmt.Println("再见!")
			break
		}

		if input == "" {
			continue
		}

		result, err := calculate(input)
		if err != nil {
			fmt.Printf("错误: %v\n\n", err)
			continue
		}

		fmt.Printf("结果: %v\n\n", result)
	}
}

func calculate(input string) (float64, error) {
	parts := strings.Fields(input)

	if len(parts) != 3 {
		return 0, fmt.Errorf("无效的表达式格式，请使用格式: 数字 操作符 数字")
	}

	num1, err := strconv.ParseFloat(parts[0], 64)
	if err != nil {
		return 0, fmt.Errorf("无效的数字: %s", parts[0])
	}

	operator := parts[1]

	num2, err := strconv.ParseFloat(parts[2], 64)
	if err != nil {
		return 0, fmt.Errorf("无效的数字: %s", parts[2])
	}

	switch operator {
	case "+":
		return num1 + num2, nil
	case "-":
		return num1 - num2, nil
	case "*":
		return num1 * num2, nil
	case "/":
		if num2 == 0 {
			return 0, fmt.Errorf("除数不能为零")
		}
		return num1 / num2, nil
	default:
		return 0, fmt.Errorf("不支持的操作符: %s", operator)
	}
}

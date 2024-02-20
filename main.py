from learn_python_versioning.report_pi import report_pi

if __name__ == "__main__":
    for n in range(1, 10):
        pi = report_pi(n)
        print(f"Pi with {n} decimals is: {pi}")

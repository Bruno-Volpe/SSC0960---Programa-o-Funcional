def is_prime(n, i=2):
    # base cases
    if n <= 2:
        return True if(n == 2) else False
    if n % i == 0:
        return False
    if i * i > n:
        return True

    # Check for next divisor
    return is_prime(n, i + 1)

def find_primes_in_range(x, y):
    if x > y:
        return []
    if is_prime(x):
        return [x] + find_primes_in_range(x + 1, y)
    else:
        return find_primes_in_range(x + 1, y)

def find_max_interval(aux, i=0, max_interval=0):
    if i >= len(aux) - 1:
        return max_interval
    if aux[i+1] - aux[i] > max_interval:
        max_interval = aux[i+1] - aux[i]
    return find_max_interval(aux, i + 1, max_interval)

def biggest_interval_between_two_prime_elements(x, y):
    #x < y
    aux = find_primes_in_range(x, y)
    return find_max_interval(aux)

n1 = int(input())
n2 = int(input())
print(biggest_interval_between_two_prime_elements(n1, n2))
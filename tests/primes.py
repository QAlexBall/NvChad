import pytest


def primes(n: int):
    """
    This function returns all the prime numbers less than n
    """
    if n < 2:
        return []

    primes = [2]
    for i in range(3, n):
        for p in primes:
            if i % p == 0:
                break
        else:
            primes.append(i)
    return primes


@pytest.fixture
def test_primes():
    test_cases = [
        (3, [2]),
        (10, [2, 3, 5, 7]),
        (20, [2, 3, 5, 7, 11, 13, 17, 19]),
        (2, [2]),
        (1, []),
        (30, [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]),
    ]
    return test_cases


def test_primes_fixturetesttestsetsetsetsetsetsetsssssssssssssssssssssssssssssssssssss_hello_leofdkafjdkjdaf(
    test_primes,
):
    for n, expected_result in test_primes:
        assert primes(n) == expected_result


class Test:
    pass


if __name__ == "__main__":
    print(primes(3))

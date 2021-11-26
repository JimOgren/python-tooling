# pylint: disable=missing-module-docstring,missing-function-docstring
import numpy as np

from src import utils


def test_square_func():
    number = 13
    assert np.abs(utils.square_func(number) - number * number) < 1e-8
    assert utils.square_func(1) == 1

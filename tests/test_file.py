from learn_python_versioning.report_pi import report_pi


def test_report_pi():
    assert report_pi(2) == 3.14
    assert report_pi(4) == 3.1416
    assert report_pi(6) == 3.141593

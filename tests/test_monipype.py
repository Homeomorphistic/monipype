from pytest import CaptureFixture

from monipype import main


def test_main_prints_greeting(capsys: CaptureFixture[str]) -> None:
    main()

    capsys.readouterr()
    assert False

from monipype import main


def test_main_prints_greeting(capsys: object) -> None:
    main()

    captured = capsys.readouterr()
    assert captured.out == "Hello from monipype!\n"

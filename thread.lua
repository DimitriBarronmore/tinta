return {
    ["inkVersion"] = 20,
    ["root"] = {
        {
            {
                ["->t->"] = "once"
            },
            {
                ["->t->"] = "once"
            },
            {
                "done",
                {
                    ["#n"] = "g-0"
                }
            },
            "TERM"
        },
        "done",
        {
            ["once"] = {
                {
                    "ev",
                    "visit",
                    1,
                    "MIN",
                    "/ev",
                    "ev",
                    "du",
                    0,
                    "==",
                    "/ev",
                    {
                        ["->"] = ".^.s0",
                        ["c"] = true
                    },
                    "ev",
                    "du",
                    1,
                    "==",
                    "/ev",
                    {
                        ["->"] = ".^.s1",
                        ["c"] = true
                    },
                    "nop",
                    {
                        ["s0"] = {
                            "pop",
                            "thread",
                            {
                                ["->"] = "content"
                            },
                            {
                                ["->"] = ".^.^.17"
                            },
                            "TERM"
                        },
                        ["s1"] = {
                            "pop",
                            {
                                ["->"] = ".^.^.17"
                            },
                            "TERM"
                        },
                        ["#f"] = 5
                    }
                },
                "\n",
                "ev",
                "void",
                "/ev",
                "->->",
                "TERM"
            },
            ["content"] = {
                "^Content",
                "\n",
                "done",
                "TERM"
            }
        }
    },
    ["listDefs"] = {}
}
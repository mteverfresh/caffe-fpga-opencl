var loopsJSON={
  "columns":["Pipelined", "II", "Bottleneck"]
  , "functions":
  [
    {
      "name":"Block2"
      , "data":
      ["No", "n/a", "n/a"]
      , "debug":
      [
        [
          {
            "filename":"net.cl"
            , "line":412
            , "level":0
          }
        ]
      ]
    }
    , {
      "name":"Block6"
      , "data":
      ["No", "n/a", "n/a"]
      , "debug":
      [
        [
          {
            "filename":"net.cl"
            , "line":430
            , "level":0
          }
        ]
      ]
    }
    , {
      "name":"Block7"
      , "data":
      ["No", "n/a", "n/a"]
      , "debug":
      [
        [
          {
            "filename":"net.cl"
            , "line":430
            , "level":1
          }
        ]
      ]
    }
    , {
      "name":"Block8"
      , "data":
      ["No", "n/a", "n/a"]
      , "debug":
      [
        [
          {
            "filename":"net.cl"
            , "line":430
            , "level":2
          }
        ]
      ]
    }
    , {
      "name":"Block14"
      , "data":
      ["No", "n/a", "n/a"]
      , "debug":
      [
        [
          {
            "filename":"net.cl"
            , "line":451
            , "level":0
          }
        ]
      ]
    }
    , {
      "name":"Block15"
      , "data":
      ["No", "n/a", "n/a"]
      , "debug":
      [
        [
          {
            "filename":"net.cl"
            , "line":451
            , "level":1
          }
        ]
      ]
    }
    , {
      "name":"Block16"
      , "data":
      ["No", "n/a", "n/a"]
      , "debug":
      [
        [
          {
            "filename":"net.cl"
            , "line":451
            , "level":2
          }
        ]
      ]
    }
    , {
      "name":"Block17"
      , "data":
      ["No", "n/a", "n/a"]
      , "debug":
      [
        [
          {
            "filename":"net.cl"
            , "line":455
            , "level":3
          }
        ]
      ]
    }
    , {
      "name":"Block24"
      , "data":
      ["No", "n/a", "n/a"]
      , "debug":
      [
        [
          {
            "filename":"net.cl"
            , "line":480
            , "level":0
          }
        ]
      ]
    }
    , {
      "name":"Block28"
      , "data":
      ["No", "n/a", "n/a"]
      , "debug":
      [
        [
          {
            "filename":"net.cl"
            , "line":504
            , "level":0
          }
        ]
      ]
    }
    , {
      "name":"Block29"
      , "data":
      ["No", "n/a", "n/a"]
      , "debug":
      [
        [
          {
            "filename":"net.cl"
            , "line":504
            , "level":1
          }
        ]
      ]
    }
    , {
      "name":"Block30"
      , "data":
      ["No", "n/a", "n/a"]
      , "debug":
      [
        [
          {
            "filename":"net.cl"
            , "line":504
            , "level":2
          }
        ]
      ]
    }
    , {
      "name":"Block31"
      , "data":
      ["No", "n/a", "n/a"]
      , "debug":
      [
        [
          {
            "filename":"net.cl"
            , "line":506
            , "level":3
          }
        ]
      ]
    }
    , {
      "name":"Block38"
      , "data":
      ["No", "n/a", "n/a"]
      , "debug":
      [
        [
          {
            "filename":"net.cl"
            , "line":537
            , "level":0
          }
        ]
      ]
    }
  ]
}
;var mavJSON={
  "nodes":
  [
    {
      "type":"kernel"
      , "id":16
      , "name":"dataLayer"
      , "file":""
      , "line":"0"
      , "children":[
        {
          "type":"bb"
          , "id":3
          , "name":"Block0.wii_blk"
          , "file":""
          , "line":"0"
          , "children":[
            {
              "type":"inst"
              , "id":7
              , "name":"Load"
              , "file":"1"
              , "line":"412"
              , "details":
              {
                "Width":"32 bits"
                , "Type":"Simple"
                , "Stall-free":"No"
                , "Start-Cycle":"6"
                , "Latency":"1"
                , "Additional Info":" This operation is work-item invariant -- it performs the same operation for all threads in the kernel."
              }
            }
            , {
              "type":"inst"
              , "id":8
              , "name":"end"
              , "file":"0"
              , "line":"0"
              , "details":
              {
                "Start-Cycle":"7"
                , "Latency":"1"
                , "Additional Info":"Exit from a basic block. Control flow branches at this node to one or more merge nodes. There is no control branching between merge and branch node for the same basic block."
              }
            }
            , {
              "type":"inst"
              , "id":9
              , "name":"begin"
              , "file":""
              , "line":""
              , "details":
              {
                "Start-Cycle":"0"
                , "Latency":"1"
                , "Additional Info":"Entrance to a basic block. Control flow comes to this node from one or more branch nodes, unless it's the very first merge node in a kernel. There is no control branching between merge and branch node within the same basic block."
              }
            }
          ]
          , "details":
          {
            "Latency":"8"
          }
        }
        , {
          "type":"bb"
          , "id":4
          , "name":"Block1"
          , "file":""
          , "line":"0"
          , "details":
          {
            "Latency":"10"
          }
        }
        , {
          "type":"bb"
          , "id":5
          , "name":"Block2"
          , "file":""
          , "line":"0"
          , "II":1
          , "LoopInfo":"Loop is not pipelined. See Optimization Report for more information."
          , "hasFmaxBottlenecks":"No"
          , "hasSubloops":"No"
          , "isPipelined":"No"
          , "children":[
            {
              "type":"inst"
              , "id":10
              , "name":"Load"
              , "file":"1"
              , "line":"412"
              , "details":
              {
                "Width":"32 bits"
                , "Type":"Burst-coalesced"
                , "Stall-free":"No"
                , "Start-Cycle":"2"
                , "Latency":"160"
              }
            }
            , {
              "type":"inst"
              , "id":11
              , "name":"Load"
              , "file":"1"
              , "line":"412"
              , "details":
              {
                "Width":"32 bits"
                , "Type":"Burst-coalesced"
                , "Stall-free":"No"
                , "Start-Cycle":"2"
                , "Latency":"160"
              }
            }
            , {
              "type":"inst"
              , "id":12
              , "name":"Store"
              , "file":"1"
              , "line":"412"
              , "details":
              {
                "Width":"32 bits"
                , "Type":"Burst-coalesced"
                , "Stall-free":"No"
                , "Start-Cycle":"168"
                , "Latency":"160"
              }
            }
            , {
              "type":"inst"
              , "id":13
              , "name":"loop end"
              , "file":"1"
              , "line":"412"
              , "details":
              {
                "Start-Cycle":"328"
                , "Latency":"1"
                , "Additional Info":"Exit from a basic block. Control flow branches at this node to one or more merge nodes. There is no control branching between merge and branch node for the same basic block."
              }
            }
            , {
              "type":"inst"
              , "id":14
              , "name":"loop"
              , "file":""
              , "line":""
              , "loopTo":13
              , "details":
              {
                "Start-Cycle":"0"
                , "Latency":"1"
                , "Additional Info":"Entrance to a basic block. Control flow comes to this node from one or more branch nodes, unless it's the very first merge node in a kernel. There is no control branching between merge and branch node within the same basic block."
              }
            }
          ]
          , "details":
          {
            "Latency":"329"
          }
        }
        , {
          "type":"bb"
          , "id":6
          , "name":"Block3"
          , "file":""
          , "line":"0"
          , "details":
          {
            "Latency":"2"
          }
        }
      ]
    }
    , {
      "type":"kernel"
      , "id":43
      , "name":"paddingLayer"
      , "file":""
      , "line":"0"
      , "children":[
        {
          "type":"bb"
          , "id":22
          , "name":"Block4.wii_blk"
          , "file":""
          , "line":"0"
          , "children":[
            {
              "type":"inst"
              , "id":30
              , "name":"Load"
              , "file":"1"
              , "line":"430"
              , "details":
              {
                "Width":"64 bits"
                , "Type":"Simple"
                , "Stall-free":"No"
                , "Start-Cycle":"2"
                , "Latency":"1"
                , "Additional Info":" This operation is work-item invariant -- it performs the same operation for all threads in the kernel."
              }
            }
            , {
              "type":"inst"
              , "id":31
              , "name":"end"
              , "file":"0"
              , "line":"0"
              , "details":
              {
                "Start-Cycle":"4"
                , "Latency":"1"
                , "Additional Info":"Exit from a basic block. Control flow branches at this node to one or more merge nodes. There is no control branching between merge and branch node for the same basic block."
              }
            }
            , {
              "type":"inst"
              , "id":32
              , "name":"begin"
              , "file":""
              , "line":""
              , "details":
              {
                "Start-Cycle":"0"
                , "Latency":"1"
                , "Additional Info":"Entrance to a basic block. Control flow comes to this node from one or more branch nodes, unless it's the very first merge node in a kernel. There is no control branching between merge and branch node within the same basic block."
              }
            }
          ]
          , "details":
          {
            "Latency":"5"
          }
        }
        , {
          "type":"bb"
          , "id":23
          , "name":"Block5"
          , "file":""
          , "line":"0"
          , "children":[
            {
              "type":"inst"
              , "id":33
              , "name":"Load"
              , "file":"1"
              , "line":"430"
              , "details":
              {
                "Width":"32 bits"
                , "Type":"Semi-streaming"
                , "Stall-free":"No"
                , "Start-Cycle":"2"
                , "Latency":"3"
              }
            }
            , {
              "type":"inst"
              , "id":34
              , "name":"Load"
              , "file":"1"
              , "line":"430"
              , "details":
              {
                "Width":"32 bits"
                , "Type":"Semi-streaming"
                , "Stall-free":"No"
                , "Start-Cycle":"6"
                , "Latency":"3"
              }
            }
            , {
              "type":"inst"
              , "id":35
              , "name":"end"
              , "file":"1"
              , "line":"430"
              , "details":
              {
                "Start-Cycle":"9"
                , "Latency":"1"
                , "Additional Info":"Exit from a basic block. Control flow branches at this node to one or more merge nodes. There is no control branching between merge and branch node for the same basic block."
              }
            }
            , {
              "type":"inst"
              , "id":36
              , "name":"begin"
              , "file":""
              , "line":""
              , "details":
              {
                "Start-Cycle":"0"
                , "Latency":"1"
                , "Additional Info":"Entrance to a basic block. Control flow comes to this node from one or more branch nodes, unless it's the very first merge node in a kernel. There is no control branching between merge and branch node within the same basic block."
              }
            }
          ]
          , "details":
          {
            "Latency":"10"
          }
        }
        , {
          "type":"bb"
          , "id":24
          , "name":"Block6"
          , "file":""
          , "line":"0"
          , "II":1
          , "LoopInfo":"Entry to loop. "
          , "hasFmaxBottlenecks":"No"
          , "hasSubloops":"Yes"
          , "isPipelined":"No"
          , "loopTo":28
          , "details":
          {
            "Latency":"5"
          }
        }
        , {
          "type":"bb"
          , "id":25
          , "name":"Block7"
          , "file":""
          , "line":"0"
          , "II":1
          , "LoopInfo":"Entry to loop. "
          , "hasFmaxBottlenecks":"No"
          , "hasSubloops":"Yes"
          , "isPipelined":"No"
          , "loopTo":27
          , "details":
          {
            "Latency":"5"
          }
        }
        , {
          "type":"bb"
          , "id":26
          , "name":"Block8"
          , "file":""
          , "line":"0"
          , "II":1
          , "LoopInfo":"Loop is not pipelined. See Optimization Report for more information."
          , "hasFmaxBottlenecks":"No"
          , "hasSubloops":"No"
          , "isPipelined":"No"
          , "children":[
            {
              "type":"inst"
              , "id":37
              , "name":"Load"
              , "file":"1"
              , "line":"430"
              , "details":
              {
                "Width":"64 bits"
                , "Type":"Burst-coalesced"
                , "Stall-free":"No"
                , "Start-Cycle":"3"
                , "Latency":"160"
              }
            }
            , {
              "type":"inst"
              , "id":38
              , "name":"Load"
              , "file":"1"
              , "line":"430"
              , "details":
              {
                "Width":"32 bits"
                , "Type":"Burst-coalesced"
                , "Stall-free":"No"
                , "Start-Cycle":"172"
                , "Latency":"160"
              }
            }
            , {
              "type":"inst"
              , "id":39
              , "name":"Store"
              , "file":"1"
              , "line":"430"
              , "details":
              {
                "Width":"32 bits"
                , "Type":"Burst-coalesced"
                , "Stall-free":"No"
                , "Start-Cycle":"332"
                , "Latency":"160"
              }
            }
            , {
              "type":"inst"
              , "id":40
              , "name":"loop end"
              , "file":"1"
              , "line":"430"
              , "details":
              {
                "Start-Cycle":"492"
                , "Latency":"1"
                , "Additional Info":"Exit from a basic block. Control flow branches at this node to one or more merge nodes. There is no control branching between merge and branch node for the same basic block."
              }
            }
            , {
              "type":"inst"
              , "id":41
              , "name":"loop"
              , "file":""
              , "line":""
              , "loopTo":40
              , "details":
              {
                "Start-Cycle":"0"
                , "Latency":"1"
                , "Additional Info":"Entrance to a basic block. Control flow comes to this node from one or more branch nodes, unless it's the very first merge node in a kernel. There is no control branching between merge and branch node within the same basic block."
              }
            }
          ]
          , "details":
          {
            "Latency":"493"
          }
        }
        , {
          "type":"bb"
          , "id":27
          , "name":"Block9"
          , "file":""
          , "line":"0"
          , "II":1
          , "LoopInfo":"Exit which branches back to loop. "
          , "hasFmaxBottlenecks":"No"
          , "hasSubloops":"Yes"
          , "isPipelined":"No"
          , "details":
          {
            "Latency":"4"
          }
        }
        , {
          "type":"bb"
          , "id":28
          , "name":"Block10"
          , "file":""
          , "line":"0"
          , "II":1
          , "LoopInfo":"Exit which branches back to loop. "
          , "hasFmaxBottlenecks":"No"
          , "hasSubloops":"Yes"
          , "isPipelined":"No"
          , "details":
          {
            "Latency":"4"
          }
        }
        , {
          "type":"bb"
          , "id":29
          , "name":"Block11"
          , "file":""
          , "line":"0"
          , "details":
          {
            "Latency":"2"
          }
        }
      ]
    }
    , {
      "type":"kernel"
      , "id":72
      , "name":"poolingLayer"
      , "file":""
      , "line":"0"
      , "children":[
        {
          "type":"bb"
          , "id":45
          , "name":"Block12.wii_blk"
          , "file":""
          , "line":"0"
          , "children":[
            {
              "type":"inst"
              , "id":55
              , "name":"Load"
              , "file":"1"
              , "line":"451"
              , "details":
              {
                "Width":"64 bits"
                , "Type":"Simple"
                , "Stall-free":"No"
                , "Start-Cycle":"2"
                , "Latency":"1"
                , "Additional Info":" This operation is work-item invariant -- it performs the same operation for all threads in the kernel."
              }
            }
            , {
              "type":"inst"
              , "id":56
              , "name":"end"
              , "file":"0"
              , "line":"0"
              , "details":
              {
                "Start-Cycle":"4"
                , "Latency":"1"
                , "Additional Info":"Exit from a basic block. Control flow branches at this node to one or more merge nodes. There is no control branching between merge and branch node for the same basic block."
              }
            }
            , {
              "type":"inst"
              , "id":57
              , "name":"begin"
              , "file":""
              , "line":""
              , "details":
              {
                "Start-Cycle":"0"
                , "Latency":"1"
                , "Additional Info":"Entrance to a basic block. Control flow comes to this node from one or more branch nodes, unless it's the very first merge node in a kernel. There is no control branching between merge and branch node within the same basic block."
              }
            }
          ]
          , "details":
          {
            "Latency":"5"
          }
        }
        , {
          "type":"bb"
          , "id":46
          , "name":"Block13"
          , "file":""
          , "line":"0"
          , "children":[
            {
              "type":"inst"
              , "id":58
              , "name":"Load"
              , "file":"1"
              , "line":"451"
              , "details":
              {
                "Width":"512 bits"
                , "Type":"Semi-streaming"
                , "Stall-free":"No"
                , "Start-Cycle":"2"
                , "Latency":"3"
              }
            }
            , {
              "type":"inst"
              , "id":59
              , "name":"end"
              , "file":"1"
              , "line":"451"
              , "details":
              {
                "Start-Cycle":"8"
                , "Latency":"1"
                , "Additional Info":"Exit from a basic block. Control flow branches at this node to one or more merge nodes. There is no control branching between merge and branch node for the same basic block."
              }
            }
            , {
              "type":"inst"
              , "id":60
              , "name":"begin"
              , "file":""
              , "line":""
              , "details":
              {
                "Start-Cycle":"0"
                , "Latency":"1"
                , "Additional Info":"Entrance to a basic block. Control flow comes to this node from one or more branch nodes, unless it's the very first merge node in a kernel. There is no control branching between merge and branch node within the same basic block."
              }
            }
          ]
          , "details":
          {
            "Latency":"9"
          }
        }
        , {
          "type":"bb"
          , "id":47
          , "name":"Block14"
          , "file":""
          , "line":"0"
          , "II":1
          , "LoopInfo":"Entry to loop. "
          , "hasFmaxBottlenecks":"No"
          , "hasSubloops":"Yes"
          , "isPipelined":"No"
          , "loopTo":53
          , "details":
          {
            "Latency":"5"
          }
        }
        , {
          "type":"bb"
          , "id":48
          , "name":"Block15"
          , "file":""
          , "line":"0"
          , "II":1
          , "LoopInfo":"Entry to loop. "
          , "hasFmaxBottlenecks":"No"
          , "hasSubloops":"Yes"
          , "isPipelined":"No"
          , "children":[
            {
              "type":"inst"
              , "id":61
              , "name":"Load"
              , "file":"1"
              , "line":"452"
              , "details":
              {
                "Width":"32 bits"
                , "Type":"Burst-coalesced"
                , "Stall-free":"No"
                , "Start-Cycle":"9"
                , "Latency":"160"
              }
            }
            , {
              "type":"inst"
              , "id":62
              , "name":"end"
              , "file":"1"
              , "line":"451"
              , "details":
              {
                "Start-Cycle":"169"
                , "Latency":"1"
                , "Additional Info":"Exit from a basic block. Control flow branches at this node to one or more merge nodes. There is no control branching between merge and branch node for the same basic block."
              }
            }
            , {
              "type":"inst"
              , "id":63
              , "name":"loop"
              , "file":""
              , "line":""
              , "loopTo":52
              , "details":
              {
                "Start-Cycle":"0"
                , "Latency":"1"
                , "Additional Info":"Entrance to a basic block. Control flow comes to this node from one or more branch nodes, unless it's the very first merge node in a kernel. There is no control branching between merge and branch node within the same basic block."
              }
            }
          ]
          , "details":
          {
            "Latency":"170"
          }
        }
        , {
          "type":"bb"
          , "id":49
          , "name":"Block16"
          , "file":""
          , "line":"0"
          , "II":1
          , "LoopInfo":"Entry to loop. "
          , "hasFmaxBottlenecks":"No"
          , "hasSubloops":"Yes"
          , "isPipelined":"No"
          , "loopTo":69
          , "details":
          {
            "Latency":"2"
          }
        }
        , {
          "type":"bb"
          , "id":50
          , "name":"Block17"
          , "file":""
          , "line":"0"
          , "II":1
          , "LoopInfo":"Loop is not pipelined. See Optimization Report for more information."
          , "hasFmaxBottlenecks":"No"
          , "hasSubloops":"No"
          , "isPipelined":"No"
          , "children":[
            {
              "type":"inst"
              , "id":64
              , "name":"Load"
              , "file":"1"
              , "line":"457"
              , "details":
              {
                "Width":"32 bits"
                , "Type":"Burst-coalesced"
                , "Stall-free":"No"
                , "Start-Cycle":"7"
                , "Latency":"160"
              }
            }
            , {
              "type":"inst"
              , "id":65
              , "name":"loop end"
              , "file":"1"
              , "line":"455"
              , "details":
              {
                "Start-Cycle":"170"
                , "Latency":"1"
                , "Additional Info":"Exit from a basic block. Control flow branches at this node to one or more merge nodes. There is no control branching between merge and branch node for the same basic block."
              }
            }
            , {
              "type":"inst"
              , "id":66
              , "name":"loop"
              , "file":""
              , "line":""
              , "loopTo":65
              , "details":
              {
                "Start-Cycle":"0"
                , "Latency":"1"
                , "Additional Info":"Entrance to a basic block. Control flow comes to this node from one or more branch nodes, unless it's the very first merge node in a kernel. There is no control branching between merge and branch node within the same basic block."
              }
            }
          ]
          , "details":
          {
            "Latency":"171"
          }
        }
        , {
          "type":"bb"
          , "id":51
          , "name":"Block18"
          , "file":""
          , "line":"0"
          , "II":1
          , "LoopInfo":"Exit which branches back to loop. "
          , "hasFmaxBottlenecks":"No"
          , "hasSubloops":"Yes"
          , "isPipelined":"No"
          , "children":[
            {
              "type":"inst"
              , "id":67
              , "name":"Store"
              , "file":"1"
              , "line":"462"
              , "details":
              {
                "Width":"32 bits"
                , "Type":"Burst-coalesced"
                , "Stall-free":"No"
                , "Start-Cycle":"3"
                , "Latency":"160"
              }
            }
            , {
              "type":"inst"
              , "id":68
              , "name":"Load"
              , "file":"1"
              , "line":"452"
              , "details":
              {
                "Width":"32 bits"
                , "Type":"Burst-coalesced"
                , "Stall-free":"No"
                , "Start-Cycle":"163"
                , "Latency":"160"
              }
            }
            , {
              "type":"inst"
              , "id":69
              , "name":"end"
              , "file":"1"
              , "line":"451"
              , "details":
              {
                "Start-Cycle":"323"
                , "Latency":"1"
                , "Additional Info":"Exit from a basic block. Control flow branches at this node to one or more merge nodes. There is no control branching between merge and branch node for the same basic block."
              }
            }
            , {
              "type":"inst"
              , "id":70
              , "name":"begin"
              , "file":""
              , "line":""
              , "details":
              {
                "Start-Cycle":"0"
                , "Latency":"1"
                , "Additional Info":"Entrance to a basic block. Control flow comes to this node from one or more branch nodes, unless it's the very first merge node in a kernel. There is no control branching between merge and branch node within the same basic block."
              }
            }
          ]
          , "details":
          {
            "Latency":"324"
          }
        }
        , {
          "type":"bb"
          , "id":52
          , "name":"Block19"
          , "file":""
          , "line":"0"
          , "II":1
          , "LoopInfo":"Exit which branches back to loop. "
          , "hasFmaxBottlenecks":"No"
          , "hasSubloops":"Yes"
          , "isPipelined":"No"
          , "details":
          {
            "Latency":"4"
          }
        }
        , {
          "type":"bb"
          , "id":53
          , "name":"Block20"
          , "file":""
          , "line":"0"
          , "II":1
          , "LoopInfo":"Exit which branches back to loop. "
          , "hasFmaxBottlenecks":"No"
          , "hasSubloops":"Yes"
          , "isPipelined":"No"
          , "details":
          {
            "Latency":"4"
          }
        }
        , {
          "type":"bb"
          , "id":54
          , "name":"Block21"
          , "file":""
          , "line":"0"
          , "details":
          {
            "Latency":"2"
          }
        }
      ]
    }
    , {
      "type":"kernel"
      , "id":86
      , "name":"reluLayer"
      , "file":""
      , "line":"0"
      , "children":[
        {
          "type":"bb"
          , "id":74
          , "name":"Block22.wii_blk"
          , "file":""
          , "line":"0"
          , "children":[
            {
              "type":"inst"
              , "id":78
              , "name":"Load"
              , "file":"1"
              , "line":"480"
              , "details":
              {
                "Width":"32 bits"
                , "Type":"Simple"
                , "Stall-free":"No"
                , "Start-Cycle":"6"
                , "Latency":"1"
                , "Additional Info":" This operation is work-item invariant -- it performs the same operation for all threads in the kernel."
              }
            }
            , {
              "type":"inst"
              , "id":79
              , "name":"end"
              , "file":"0"
              , "line":"0"
              , "details":
              {
                "Start-Cycle":"7"
                , "Latency":"1"
                , "Additional Info":"Exit from a basic block. Control flow branches at this node to one or more merge nodes. There is no control branching between merge and branch node for the same basic block."
              }
            }
            , {
              "type":"inst"
              , "id":80
              , "name":"begin"
              , "file":""
              , "line":""
              , "details":
              {
                "Start-Cycle":"0"
                , "Latency":"1"
                , "Additional Info":"Entrance to a basic block. Control flow comes to this node from one or more branch nodes, unless it's the very first merge node in a kernel. There is no control branching between merge and branch node within the same basic block."
              }
            }
          ]
          , "details":
          {
            "Latency":"8"
          }
        }
        , {
          "type":"bb"
          , "id":75
          , "name":"Block23"
          , "file":""
          , "line":"0"
          , "details":
          {
            "Latency":"10"
          }
        }
        , {
          "type":"bb"
          , "id":76
          , "name":"Block24"
          , "file":""
          , "line":"0"
          , "II":1
          , "LoopInfo":"Loop is not pipelined. See Optimization Report for more information."
          , "hasFmaxBottlenecks":"No"
          , "hasSubloops":"No"
          , "isPipelined":"No"
          , "children":[
            {
              "type":"inst"
              , "id":81
              , "name":"Load"
              , "file":"1"
              , "line":"481"
              , "details":
              {
                "Width":"32 bits"
                , "Type":"Burst-coalesced"
                , "Stall-free":"No"
                , "Start-Cycle":"2"
                , "Latency":"160"
              }
            }
            , {
              "type":"inst"
              , "id":82
              , "name":"Store"
              , "file":"1"
              , "line":"481"
              , "details":
              {
                "Width":"32 bits"
                , "Type":"Burst-coalesced"
                , "Stall-free":"No"
                , "Start-Cycle":"165"
                , "Latency":"160"
              }
            }
            , {
              "type":"inst"
              , "id":83
              , "name":"loop end"
              , "file":"1"
              , "line":"480"
              , "details":
              {
                "Start-Cycle":"325"
                , "Latency":"1"
                , "Additional Info":"Exit from a basic block. Control flow branches at this node to one or more merge nodes. There is no control branching between merge and branch node for the same basic block."
              }
            }
            , {
              "type":"inst"
              , "id":84
              , "name":"loop"
              , "file":""
              , "line":""
              , "loopTo":83
              , "details":
              {
                "Start-Cycle":"0"
                , "Latency":"1"
                , "Additional Info":"Entrance to a basic block. Control flow comes to this node from one or more branch nodes, unless it's the very first merge node in a kernel. There is no control branching between merge and branch node within the same basic block."
              }
            }
          ]
          , "details":
          {
            "Latency":"326"
          }
        }
        , {
          "type":"bb"
          , "id":77
          , "name":"Block25"
          , "file":""
          , "line":"0"
          , "details":
          {
            "Latency":"2"
          }
        }
      ]
    }
    , {
      "type":"kernel"
      , "id":115
      , "name":"convLayer"
      , "file":""
      , "line":"0"
      , "children":[
        {
          "type":"bb"
          , "id":88
          , "name":"Block26.wii_blk"
          , "file":""
          , "line":"0"
          , "children":[
            {
              "type":"inst"
              , "id":98
              , "name":"Load"
              , "file":"1"
              , "line":"504"
              , "details":
              {
                "Width":"64 bits"
                , "Type":"Simple"
                , "Stall-free":"No"
                , "Start-Cycle":"2"
                , "Latency":"1"
                , "Additional Info":" This operation is work-item invariant -- it performs the same operation for all threads in the kernel."
              }
            }
            , {
              "type":"inst"
              , "id":99
              , "name":"end"
              , "file":"0"
              , "line":"0"
              , "details":
              {
                "Start-Cycle":"4"
                , "Latency":"1"
                , "Additional Info":"Exit from a basic block. Control flow branches at this node to one or more merge nodes. There is no control branching between merge and branch node for the same basic block."
              }
            }
            , {
              "type":"inst"
              , "id":100
              , "name":"begin"
              , "file":""
              , "line":""
              , "details":
              {
                "Start-Cycle":"0"
                , "Latency":"1"
                , "Additional Info":"Entrance to a basic block. Control flow comes to this node from one or more branch nodes, unless it's the very first merge node in a kernel. There is no control branching between merge and branch node within the same basic block."
              }
            }
          ]
          , "details":
          {
            "Latency":"5"
          }
        }
        , {
          "type":"bb"
          , "id":89
          , "name":"Block27"
          , "file":""
          , "line":"0"
          , "children":[
            {
              "type":"inst"
              , "id":101
              , "name":"Load"
              , "file":"1"
              , "line":"504"
              , "details":
              {
                "Width":"512 bits"
                , "Type":"Semi-streaming"
                , "Stall-free":"No"
                , "Start-Cycle":"2"
                , "Latency":"3"
              }
            }
            , {
              "type":"inst"
              , "id":102
              , "name":"Load"
              , "file":"1"
              , "line":"507"
              , "details":
              {
                "Width":"32 bits"
                , "Type":"Semi-streaming"
                , "Stall-free":"No"
                , "Start-Cycle":"6"
                , "Latency":"3"
              }
            }
            , {
              "type":"inst"
              , "id":103
              , "name":"Load"
              , "file":"1"
              , "line":"509"
              , "details":
              {
                "Width":"256 bits"
                , "Type":"Semi-streaming"
                , "Stall-free":"No"
                , "Start-Cycle":"10"
                , "Latency":"3"
              }
            }
            , {
              "type":"inst"
              , "id":104
              , "name":"end"
              , "file":"1"
              , "line":"504"
              , "details":
              {
                "Start-Cycle":"13"
                , "Latency":"1"
                , "Additional Info":"Exit from a basic block. Control flow branches at this node to one or more merge nodes. There is no control branching between merge and branch node for the same basic block."
              }
            }
            , {
              "type":"inst"
              , "id":105
              , "name":"begin"
              , "file":""
              , "line":""
              , "details":
              {
                "Start-Cycle":"0"
                , "Latency":"1"
                , "Additional Info":"Entrance to a basic block. Control flow comes to this node from one or more branch nodes, unless it's the very first merge node in a kernel. There is no control branching between merge and branch node within the same basic block."
              }
            }
          ]
          , "details":
          {
            "Latency":"14"
          }
        }
        , {
          "type":"bb"
          , "id":90
          , "name":"Block28"
          , "file":""
          , "line":"0"
          , "II":1
          , "LoopInfo":"Entry to loop. "
          , "hasFmaxBottlenecks":"No"
          , "hasSubloops":"Yes"
          , "isPipelined":"No"
          , "loopTo":96
          , "details":
          {
            "Latency":"5"
          }
        }
        , {
          "type":"bb"
          , "id":91
          , "name":"Block29"
          , "file":""
          , "line":"0"
          , "II":1
          , "LoopInfo":"Entry to loop. "
          , "hasFmaxBottlenecks":"No"
          , "hasSubloops":"Yes"
          , "isPipelined":"No"
          , "loopTo":95
          , "details":
          {
            "Latency":"5"
          }
        }
        , {
          "type":"bb"
          , "id":92
          , "name":"Block30"
          , "file":""
          , "line":"0"
          , "II":1
          , "LoopInfo":"Entry to loop. "
          , "hasFmaxBottlenecks":"No"
          , "hasSubloops":"Yes"
          , "isPipelined":"No"
          , "loopTo":112
          , "details":
          {
            "Latency":"5"
          }
        }
        , {
          "type":"bb"
          , "id":93
          , "name":"Block31"
          , "file":""
          , "line":"0"
          , "II":1
          , "LoopInfo":"Loop is not pipelined. See Optimization Report for more information."
          , "hasFmaxBottlenecks":"No"
          , "hasSubloops":"No"
          , "isPipelined":"No"
          , "children":[
            {
              "type":"inst"
              , "id":106
              , "name":"Load"
              , "file":"1"
              , "line":"509"
              , "details":
              {
                "Width":"32 bits"
                , "Type":"Burst-coalesced"
                , "Stall-free":"No"
                , "Start-Cycle":"10"
                , "Latency":"160"
              }
            }
            , {
              "type":"inst"
              , "id":107
              , "name":"Load"
              , "file":"1"
              , "line":"509"
              , "details":
              {
                "Width":"32 bits"
                , "Type":"Burst-coalesced"
                , "Stall-free":"No"
                , "Start-Cycle":"10"
                , "Latency":"160"
              }
            }
            , {
              "type":"inst"
              , "id":108
              , "name":"loop end"
              , "file":"1"
              , "line":"506"
              , "details":
              {
                "Start-Cycle":"190"
                , "Latency":"1"
                , "Additional Info":"Exit from a basic block. Control flow branches at this node to one or more merge nodes. There is no control branching between merge and branch node for the same basic block."
              }
            }
            , {
              "type":"inst"
              , "id":109
              , "name":"loop"
              , "file":""
              , "line":""
              , "loopTo":108
              , "details":
              {
                "Start-Cycle":"0"
                , "Latency":"1"
                , "Additional Info":"Entrance to a basic block. Control flow comes to this node from one or more branch nodes, unless it's the very first merge node in a kernel. There is no control branching between merge and branch node within the same basic block."
              }
            }
          ]
          , "details":
          {
            "Latency":"191"
          }
        }
        , {
          "type":"bb"
          , "id":94
          , "name":"Block32"
          , "file":""
          , "line":"0"
          , "II":1
          , "LoopInfo":"Exit which branches back to loop. "
          , "hasFmaxBottlenecks":"No"
          , "hasSubloops":"Yes"
          , "isPipelined":"No"
          , "children":[
            {
              "type":"inst"
              , "id":110
              , "name":"Load"
              , "file":"1"
              , "line":"517"
              , "details":
              {
                "Width":"32 bits"
                , "Type":"Burst-coalesced"
                , "Stall-free":"No"
                , "Start-Cycle":"1"
                , "Latency":"160"
              }
            }
            , {
              "type":"inst"
              , "id":111
              , "name":"Store"
              , "file":"1"
              , "line":"518"
              , "details":
              {
                "Width":"32 bits"
                , "Type":"Burst-coalesced"
                , "Stall-free":"No"
                , "Start-Cycle":"174"
                , "Latency":"160"
              }
            }
            , {
              "type":"inst"
              , "id":112
              , "name":"end"
              , "file":"1"
              , "line":"504"
              , "details":
              {
                "Start-Cycle":"334"
                , "Latency":"1"
                , "Additional Info":"Exit from a basic block. Control flow branches at this node to one or more merge nodes. There is no control branching between merge and branch node for the same basic block."
              }
            }
            , {
              "type":"inst"
              , "id":113
              , "name":"begin"
              , "file":""
              , "line":""
              , "details":
              {
                "Start-Cycle":"0"
                , "Latency":"1"
                , "Additional Info":"Entrance to a basic block. Control flow comes to this node from one or more branch nodes, unless it's the very first merge node in a kernel. There is no control branching between merge and branch node within the same basic block."
              }
            }
          ]
          , "details":
          {
            "Latency":"335"
          }
        }
        , {
          "type":"bb"
          , "id":95
          , "name":"Block33"
          , "file":""
          , "line":"0"
          , "II":1
          , "LoopInfo":"Exit which branches back to loop. "
          , "hasFmaxBottlenecks":"No"
          , "hasSubloops":"Yes"
          , "isPipelined":"No"
          , "details":
          {
            "Latency":"4"
          }
        }
        , {
          "type":"bb"
          , "id":96
          , "name":"Block34"
          , "file":""
          , "line":"0"
          , "II":1
          , "LoopInfo":"Exit which branches back to loop. "
          , "hasFmaxBottlenecks":"No"
          , "hasSubloops":"Yes"
          , "isPipelined":"No"
          , "details":
          {
            "Latency":"4"
          }
        }
        , {
          "type":"bb"
          , "id":97
          , "name":"Block35"
          , "file":""
          , "line":"0"
          , "details":
          {
            "Latency":"2"
          }
        }
      ]
    }
    , {
      "type":"kernel"
      , "id":129
      , "name":"outputLayer"
      , "file":""
      , "line":"0"
      , "children":[
        {
          "type":"bb"
          , "id":117
          , "name":"Block36.wii_blk"
          , "file":""
          , "line":"0"
          , "children":[
            {
              "type":"inst"
              , "id":121
              , "name":"Load"
              , "file":"1"
              , "line":"537"
              , "details":
              {
                "Width":"32 bits"
                , "Type":"Simple"
                , "Stall-free":"No"
                , "Start-Cycle":"6"
                , "Latency":"1"
                , "Additional Info":" This operation is work-item invariant -- it performs the same operation for all threads in the kernel."
              }
            }
            , {
              "type":"inst"
              , "id":122
              , "name":"end"
              , "file":"0"
              , "line":"0"
              , "details":
              {
                "Start-Cycle":"7"
                , "Latency":"1"
                , "Additional Info":"Exit from a basic block. Control flow branches at this node to one or more merge nodes. There is no control branching between merge and branch node for the same basic block."
              }
            }
            , {
              "type":"inst"
              , "id":123
              , "name":"begin"
              , "file":""
              , "line":""
              , "details":
              {
                "Start-Cycle":"0"
                , "Latency":"1"
                , "Additional Info":"Entrance to a basic block. Control flow comes to this node from one or more branch nodes, unless it's the very first merge node in a kernel. There is no control branching between merge and branch node within the same basic block."
              }
            }
          ]
          , "details":
          {
            "Latency":"8"
          }
        }
        , {
          "type":"bb"
          , "id":118
          , "name":"Block37"
          , "file":""
          , "line":"0"
          , "details":
          {
            "Latency":"10"
          }
        }
        , {
          "type":"bb"
          , "id":119
          , "name":"Block38"
          , "file":""
          , "line":"0"
          , "II":1
          , "LoopInfo":"Loop is not pipelined. See Optimization Report for more information."
          , "hasFmaxBottlenecks":"No"
          , "hasSubloops":"No"
          , "isPipelined":"No"
          , "children":[
            {
              "type":"inst"
              , "id":124
              , "name":"Load"
              , "file":"1"
              , "line":"537"
              , "details":
              {
                "Width":"32 bits"
                , "Type":"Burst-coalesced"
                , "Stall-free":"No"
                , "Start-Cycle":"2"
                , "Latency":"160"
              }
            }
            , {
              "type":"inst"
              , "id":125
              , "name":"Store"
              , "file":"1"
              , "line":"537"
              , "details":
              {
                "Width":"32 bits"
                , "Type":"Burst-coalesced"
                , "Stall-free":"No"
                , "Start-Cycle":"162"
                , "Latency":"160"
              }
            }
            , {
              "type":"inst"
              , "id":126
              , "name":"loop end"
              , "file":"1"
              , "line":"537"
              , "details":
              {
                "Start-Cycle":"322"
                , "Latency":"1"
                , "Additional Info":"Exit from a basic block. Control flow branches at this node to one or more merge nodes. There is no control branching between merge and branch node for the same basic block."
              }
            }
            , {
              "type":"inst"
              , "id":127
              , "name":"loop"
              , "file":""
              , "line":""
              , "loopTo":126
              , "details":
              {
                "Start-Cycle":"0"
                , "Latency":"1"
                , "Additional Info":"Entrance to a basic block. Control flow comes to this node from one or more branch nodes, unless it's the very first merge node in a kernel. There is no control branching between merge and branch node within the same basic block."
              }
            }
          ]
          , "details":
          {
            "Latency":"323"
          }
        }
        , {
          "type":"bb"
          , "id":120
          , "name":"Block39"
          , "file":""
          , "line":"0"
          , "details":
          {
            "Latency":"2"
          }
        }
      ]
    }
    , {
      "type":"memtype"
      , "id":17
      , "name":"Global Memory"
      , "file":""
      , "line":"0"
      , "children":[
        {
          "type":"memsys"
          , "id":18
          , "name":""
          , "file":""
          , "line":"0"
          , "replFactor":"0"
          , "banks":2
          , "pumping":0
          , "children":[
            {
              "type":"bank"
              , "id":19
              , "name":"Bank 0"
              , "file":""
              , "line":"0"
            }
            , {
              "type":"bank"
              , "id":20
              , "name":"Bank 1"
              , "file":""
              , "line":"0"
            }
          ]
        }
      ]
    }
  ]
  ,
  "links":
  [
    {
      "from":10
      , "to":12
    }
    ,
    {
      "from":11
      , "to":12
    }
    ,
    {
      "from":14
      , "to":11
    }
    ,
    {
      "from":14
      , "to":10
    }
    ,
    {
      "from":9
      , "to":7
    }
    ,
    {
      "from":13
      , "to":14
    }
    ,
    {
      "from":4
      , "to":14
    }
    ,
    {
      "from":7
      , "to":8
    }
    ,
    {
      "from":13
      , "to":6
    }
    ,
    {
      "from":12
      , "to":13
    }
    ,
    {
      "from":8
      , "to":4
    }
    ,
    {
      "from":12
      , "to":19
    }
    ,
    {
      "from":12
      , "to":20
    }
    ,
    {
      "from":19
      , "to":11
    }
    ,
    {
      "from":20
      , "to":11
    }
    ,
    {
      "from":19
      , "to":10
    }
    ,
    {
      "from":20
      , "to":10
    }
    ,
    {
      "from":19
      , "to":7
    }
    ,
    {
      "from":20
      , "to":7
    }
    ,
    {
      "from":32
      , "to":30
    }
    ,
    {
      "from":36
      , "to":33
    }
    ,
    {
      "from":38
      , "to":39
    }
    ,
    {
      "from":33
      , "to":34
    }
    ,
    {
      "from":37
      , "to":38
    }
    ,
    {
      "from":41
      , "to":37
    }
    ,
    {
      "from":28
      , "to":29
    }
    ,
    {
      "from":33
      , "to":35
    }
    ,
    {
      "from":34
      , "to":35
    }
    ,
    {
      "from":27
      , "to":25
    }
    ,
    {
      "from":24
      , "to":25
    }
    ,
    {
      "from":40
      , "to":41
    }
    ,
    {
      "from":25
      , "to":41
    }
    ,
    {
      "from":30
      , "to":31
    }
    ,
    {
      "from":39
      , "to":40
    }
    ,
    {
      "from":40
      , "to":27
    }
    ,
    {
      "from":27
      , "to":28
    }
    ,
    {
      "from":28
      , "to":24
    }
    ,
    {
      "from":35
      , "to":24
    }
    ,
    {
      "from":31
      , "to":36
    }
    ,
    {
      "from":19
      , "to":30
    }
    ,
    {
      "from":20
      , "to":30
    }
    ,
    {
      "from":19
      , "to":33
    }
    ,
    {
      "from":20
      , "to":33
    }
    ,
    {
      "from":39
      , "to":19
    }
    ,
    {
      "from":39
      , "to":20
    }
    ,
    {
      "from":19
      , "to":34
    }
    ,
    {
      "from":20
      , "to":34
    }
    ,
    {
      "from":19
      , "to":38
    }
    ,
    {
      "from":20
      , "to":38
    }
    ,
    {
      "from":19
      , "to":37
    }
    ,
    {
      "from":20
      , "to":37
    }
    ,
    {
      "from":63
      , "to":61
    }
    ,
    {
      "from":66
      , "to":64
    }
    ,
    {
      "from":70
      , "to":67
    }
    ,
    {
      "from":67
      , "to":68
    }
    ,
    {
      "from":60
      , "to":58
    }
    ,
    {
      "from":57
      , "to":55
    }
    ,
    {
      "from":56
      , "to":60
    }
    ,
    {
      "from":68
      , "to":69
    }
    ,
    {
      "from":69
      , "to":52
    }
    ,
    {
      "from":64
      , "to":65
    }
    ,
    {
      "from":53
      , "to":47
    }
    ,
    {
      "from":59
      , "to":47
    }
    ,
    {
      "from":52
      , "to":63
    }
    ,
    {
      "from":47
      , "to":63
    }
    ,
    {
      "from":55
      , "to":56
    }
    ,
    {
      "from":53
      , "to":54
    }
    ,
    {
      "from":65
      , "to":70
    }
    ,
    {
      "from":61
      , "to":62
    }
    ,
    {
      "from":69
      , "to":49
    }
    ,
    {
      "from":62
      , "to":49
    }
    ,
    {
      "from":65
      , "to":66
    }
    ,
    {
      "from":49
      , "to":66
    }
    ,
    {
      "from":52
      , "to":53
    }
    ,
    {
      "from":58
      , "to":59
    }
    ,
    {
      "from":19
      , "to":61
    }
    ,
    {
      "from":20
      , "to":61
    }
    ,
    {
      "from":19
      , "to":64
    }
    ,
    {
      "from":20
      , "to":64
    }
    ,
    {
      "from":67
      , "to":19
    }
    ,
    {
      "from":67
      , "to":20
    }
    ,
    {
      "from":19
      , "to":68
    }
    ,
    {
      "from":20
      , "to":68
    }
    ,
    {
      "from":19
      , "to":58
    }
    ,
    {
      "from":20
      , "to":58
    }
    ,
    {
      "from":19
      , "to":55
    }
    ,
    {
      "from":20
      , "to":55
    }
    ,
    {
      "from":80
      , "to":78
    }
    ,
    {
      "from":81
      , "to":82
    }
    ,
    {
      "from":84
      , "to":81
    }
    ,
    {
      "from":83
      , "to":77
    }
    ,
    {
      "from":82
      , "to":83
    }
    ,
    {
      "from":79
      , "to":75
    }
    ,
    {
      "from":78
      , "to":79
    }
    ,
    {
      "from":83
      , "to":84
    }
    ,
    {
      "from":75
      , "to":84
    }
    ,
    {
      "from":19
      , "to":78
    }
    ,
    {
      "from":20
      , "to":78
    }
    ,
    {
      "from":82
      , "to":19
    }
    ,
    {
      "from":82
      , "to":20
    }
    ,
    {
      "from":19
      , "to":81
    }
    ,
    {
      "from":20
      , "to":81
    }
    ,
    {
      "from":109
      , "to":107
    }
    ,
    {
      "from":113
      , "to":110
    }
    ,
    {
      "from":102
      , "to":103
    }
    ,
    {
      "from":101
      , "to":103
    }
    ,
    {
      "from":110
      , "to":111
    }
    ,
    {
      "from":105
      , "to":101
    }
    ,
    {
      "from":100
      , "to":98
    }
    ,
    {
      "from":109
      , "to":106
    }
    ,
    {
      "from":101
      , "to":102
    }
    ,
    {
      "from":112
      , "to":95
    }
    ,
    {
      "from":108
      , "to":109
    }
    ,
    {
      "from":92
      , "to":109
    }
    ,
    {
      "from":111
      , "to":112
    }
    ,
    {
      "from":108
      , "to":113
    }
    ,
    {
      "from":99
      , "to":105
    }
    ,
    {
      "from":112
      , "to":92
    }
    ,
    {
      "from":91
      , "to":92
    }
    ,
    {
      "from":98
      , "to":99
    }
    ,
    {
      "from":96
      , "to":90
    }
    ,
    {
      "from":104
      , "to":90
    }
    ,
    {
      "from":95
      , "to":91
    }
    ,
    {
      "from":90
      , "to":91
    }
    ,
    {
      "from":106
      , "to":108
    }
    ,
    {
      "from":107
      , "to":108
    }
    ,
    {
      "from":95
      , "to":96
    }
    ,
    {
      "from":96
      , "to":97
    }
    ,
    {
      "from":103
      , "to":104
    }
    ,
    {
      "from":101
      , "to":104
    }
    ,
    {
      "from":102
      , "to":104
    }
    ,
    {
      "from":19
      , "to":107
    }
    ,
    {
      "from":20
      , "to":107
    }
    ,
    {
      "from":19
      , "to":110
    }
    ,
    {
      "from":20
      , "to":110
    }
    ,
    {
      "from":19
      , "to":103
    }
    ,
    {
      "from":20
      , "to":103
    }
    ,
    {
      "from":111
      , "to":19
    }
    ,
    {
      "from":111
      , "to":20
    }
    ,
    {
      "from":19
      , "to":101
    }
    ,
    {
      "from":20
      , "to":101
    }
    ,
    {
      "from":19
      , "to":98
    }
    ,
    {
      "from":20
      , "to":98
    }
    ,
    {
      "from":19
      , "to":106
    }
    ,
    {
      "from":20
      , "to":106
    }
    ,
    {
      "from":19
      , "to":102
    }
    ,
    {
      "from":20
      , "to":102
    }
    ,
    {
      "from":123
      , "to":121
    }
    ,
    {
      "from":127
      , "to":124
    }
    ,
    {
      "from":124
      , "to":125
    }
    ,
    {
      "from":125
      , "to":126
    }
    ,
    {
      "from":126
      , "to":120
    }
    ,
    {
      "from":126
      , "to":127
    }
    ,
    {
      "from":118
      , "to":127
    }
    ,
    {
      "from":122
      , "to":118
    }
    ,
    {
      "from":121
      , "to":122
    }
    ,
    {
      "from":19
      , "to":121
    }
    ,
    {
      "from":20
      , "to":121
    }
    ,
    {
      "from":19
      , "to":124
    }
    ,
    {
      "from":20
      , "to":124
    }
    ,
    {
      "from":125
      , "to":19
    }
    ,
    {
      "from":125
      , "to":20
    }
  ]
  , "fileIndexMap":
  {
    "/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl":"1"
  }
}
;var areaJSON={
  "columns":["ALUTs", "FFs", "RAMs", "DSPs"]
  , "debug_enabled":1
  , "total_percent":
  [46.2689, 23.5046, 24.0709, 33.8672, 28.125]
  , "total":
  [110340, 225997, 867, 72]
  , "name":"Kernel System"
  , "max_resources":
  [469440, 938880, 2560, 256]
  , "partitions":
  [
  ]
  , "resources":
  [
    {
      "name":"Board interface"
      , "data":
      [39076, 51471, 283, 0]
      , "details":
      [
        "Platform interface logic."
      ]
    }
    , {
      "name":"Global interconnect"
      , "data":
      [18668, 27810, 104, 0]
      , "details":
      [
        "Global interconnect for 24 global loads and 6 global stores. Reduce number of global loads and stores to simplify global interconnect."
      ]
    }
  ]
  , "functions":
  [
    {
      "name":"convLayer"
      , "compute_units":1
      , "details":
      [
        "Number of compute units: 1"
        , "The following loop is nested at depth greater than 3. Reducing the depth of this nested loop will save area:\n- net.cl:506 with depth 4"
      ]
      , "resources":
      [
        {
          "name":"Function overhead"
          , "data":
          [1570, 1685, 0, 0]
          , "details":
          [
            "Kernel dispatch logic."
          ]
        }
      ]
      , "basicblocks":
      [
        {
          "name":"Block26.wii_blk"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [251, 251, 0, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [128, 128, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"No Source Line"
                    , "data":
                    [59, 59, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:504"
                    , "data":
                    [64, 64, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":504
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"net.cl:504"
              , "data":
              [8, 72, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":504
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Load"
                    , "data":
                    [8, 72, 0, 0]
                    , "details":
                    [
                      "Work-Item Invariant instruction."
                    ]
                  }
                  , "count":2
                }
              ]
            }
          ]
        }
        , {
          "name":"Block27"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [1176, 4075, 6, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [128, 489, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"No Source Line"
                    , "data":
                    [26.5, 24, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:504"
                    , "data":
                    [547.5, 1492, 4, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":504
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:506"
                    , "data":
                    [261, 340, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":506
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:507"
                    , "data":
                    [26.5, 499.5, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":507
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:509"
                    , "data":
                    [186.5, 1230.5, 2, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":509
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"net.cl:504"
              , "data":
              [123.5, 361.5, 6.5, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":504
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Integer Compare"
                    , "data":
                    [48, 0, 0, 0]
                  }
                  , "count":3
                }
                , {
                  "info":
                  {
                    "name":"Load"
                    , "data":
                    [75.5, 361.5, 6.5, 0]
                    , "details":
                    [
                      "Load with a private 64 kilobit cache. Cache is not shared with any other load. It is flushed on kernel start. Use Dynamic Profiler to verify cache effectiveness. Other kernels should not be updating the data in global memory while this kernel is using it. Cache is created when memory access pattern is data-dependent or appears to be repetitive. Simplify access pattern or mark pointer as 'volatile' to disable generation of this cache."
                    ]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:506"
              , "data":
              [75.5, 361.5, 6.5, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":506
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Load"
                    , "data":
                    [75.5, 361.5, 6.5, 0]
                    , "details":
                    [
                      "Load with a private 64 kilobit cache. Cache is not shared with any other load. It is flushed on kernel start. Use Dynamic Profiler to verify cache effectiveness. Other kernels should not be updating the data in global memory while this kernel is using it. Cache is created when memory access pattern is data-dependent or appears to be repetitive. Simplify access pattern or mark pointer as 'volatile' to disable generation of this cache."
                    ]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:507"
              , "data":
              [421, 479, 13, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":507
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Load"
                    , "data":
                    [421, 479, 13, 0]
                    , "details":
                    [
                      "Load with a private 64 kilobit cache. Cache is not shared with any other load. It is flushed on kernel start. Use Dynamic Profiler to verify cache effectiveness. Other kernels should not be updating the data in global memory while this kernel is using it. Cache is created when memory access pattern is data-dependent or appears to be repetitive. Simplify access pattern or mark pointer as 'volatile' to disable generation of this cache."
                    ]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:509"
              , "data":
              [169, 535, 13, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":509
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Load"
                    , "data":
                    [169, 535, 13, 0]
                    , "details":
                    [
                      "Load with a private 64 kilobit cache. Cache is not shared with any other load. It is flushed on kernel start. Use Dynamic Profiler to verify cache effectiveness. Other kernels should not be updating the data in global memory while this kernel is using it. Cache is created when memory access pattern is data-dependent or appears to be repetitive. Simplify access pattern or mark pointer as 'volatile' to disable generation of this cache."
                    ]
                  }
                  , "count":1
                }
              ]
            }
          ]
        }
        , {
          "name":"Block28"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [401, 1627.5, 0, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [391, 977.5, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:504"
                    , "data":
                    [5, 583.5, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":504
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:517"
                    , "data":
                    [5, 66.5, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":517
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"net.cl:509"
              , "data":
              [0, 32, 0, 2]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":509
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Mul"
                    , "data":
                    [0, 32, 0, 2]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:517"
              , "data":
              [32, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":517
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Pointer Computation"
                    , "data":
                    [32, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:518"
              , "data":
              [0, 32, 0, 2]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":518
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Mul"
                    , "data":
                    [0, 32, 0, 2]
                  }
                  , "count":1
                }
              ]
            }
          ]
        }
        , {
          "name":"Block29"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [617, 2379.5, 0, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [549, 1340.5, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"No Source Line"
                    , "data":
                    [42, 325, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:504"
                    , "data":
                    [26, 714, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":504
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
            , {
              "name":"Cluster logic"
              , "data":
              [218, 502, 2, 0]
              , "details":
              [
                "Logic required to efficiently support sets of operations that do not stall. This area cannot be affected directly."
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"net.cl:509"
              , "data":
              [0, 32, 0, 2]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":509
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Mul"
                    , "data":
                    [0, 32, 0, 2]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:518"
              , "data":
              [16, 32, 0, 2]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":518
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Add"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
                , {
                  "info":
                  {
                    "name":"Mul"
                    , "data":
                    [0, 32, 0, 2]
                  }
                  , "count":1
                }
              ]
            }
          ]
        }
        , {
          "name":"Block30"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [703, 2470.5, 0, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [677, 1628.5, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"No Source Line"
                    , "data":
                    [26, 842, 0, 0]
                  }
                  , "count":0
                }
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"net.cl:509"
              , "data":
              [0, 32, 0, 2]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":509
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Mul"
                    , "data":
                    [0, 32, 0, 2]
                  }
                  , "count":1
                }
              ]
            }
          ]
        }
        , {
          "name":"Block31"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [2790.17, 9784, 14, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [901, 2220.5, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"No Source Line"
                    , "data":
                    [1169, 4433.83, 7.5, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:505"
                    , "data":
                    [18.5, 22.4167, 0.75, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":505
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:506"
                    , "data":
                    [228.5, 1804.67, 4.33333, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":506
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:507"
                    , "data":
                    [16, 32, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":507
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:508"
                    , "data":
                    [16, 32, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":508
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:509"
                    , "data":
                    [441.167, 1238.58, 1.41667, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":509
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
            , {
              "name":"Cluster logic"
              , "data":
              [2157.83, 5186.5, 19, 0]
              , "details":
              [
                "Logic required to efficiently support sets of operations that do not stall. This area cannot be affected directly."
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"No Source Line"
              , "data":
              [32, 64, 0, 4]
              , "debug":
              [
                [
                  {
                    "filename":""
                    , "line":0
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Add"
                    , "data":
                    [32, 0, 0, 0]
                  }
                  , "count":2
                }
                , {
                  "info":
                  {
                    "name":"Mul"
                    , "data":
                    [0, 64, 0, 4]
                  }
                  , "count":2
                }
              ]
            }
            , {
              "name":"net.cl:506"
              , "data":
              [16, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":506
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Integer Compare"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:507"
              , "data":
              [16, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":507
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Integer Compare"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:508"
              , "data":
              [16, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":508
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Integer Compare"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:509"
              , "data":
              [1289, 4210, 26, 9]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":509
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Add"
                    , "data":
                    [80, 0, 0, 0]
                  }
                  , "count":5
                }
                , {
                  "info":
                  {
                    "name":"Fadd"
                    , "data":
                    [141, 0, 0, 0]
                  }
                  , "count":1
                }
                , {
                  "info":
                  {
                    "name":"Fmul"
                    , "data":
                    [34, 48, 0, 1]
                  }
                  , "count":1
                }
                , {
                  "info":
                  {
                    "name":"Load"
                    , "data":
                    [970, 4034, 26, 0]
                  }
                  , "count":2
                }
                , {
                  "info":
                  {
                    "name":"Mul"
                    , "data":
                    [0, 128, 0, 8]
                  }
                  , "count":4
                }
                , {
                  "info":
                  {
                    "name":"Pointer Computation"
                    , "data":
                    [64, 0, 0, 0]
                  }
                  , "count":2
                }
              ]
            }
          ]
        }
        , {
          "name":"Block32"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [1590, 4243.83, 8.66667, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [997, 1607.5, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:504"
                    , "data":
                    [217.667, 1660, 5, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":504
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:517"
                    , "data":
                    [203, 438, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":517
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:518"
                    , "data":
                    [68.3333, 354.833, 1.16667, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":518
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:519"
                    , "data":
                    [104, 183.5, 2.5, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":519
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
            , {
              "name":"Cluster logic"
              , "data":
              [309, 645.667, 3.33333, 0]
              , "details":
              [
                "Logic required to efficiently support sets of operations that do not stall. This area cannot be affected directly."
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"net.cl:504"
              , "data":
              [16, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":504
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Integer Compare"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:517"
              , "data":
              [626, 2017, 13, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":517
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Fadd"
                    , "data":
                    [141, 0, 0, 0]
                  }
                  , "count":1
                }
                , {
                  "info":
                  {
                    "name":"Load"
                    , "data":
                    [485, 2017, 13, 0]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:518"
              , "data":
              [447, 2216, 17, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":518
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Add"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
                , {
                  "info":
                  {
                    "name":"Pointer Computation"
                    , "data":
                    [32, 0, 0, 0]
                  }
                  , "count":1
                }
                , {
                  "info":
                  {
                    "name":"Store"
                    , "data":
                    [399, 2216, 17, 0]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:519"
              , "data":
              [16, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":519
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Add"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
          ]
        }
        , {
          "name":"Block33"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [573, 1549.5, 0, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [549, 887.5, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:504"
                    , "data":
                    [24, 662, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":504
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"net.cl:504"
              , "data":
              [16, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":504
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Integer Compare"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:519"
              , "data":
              [16, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":519
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Add"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
          ]
        }
        , {
          "name":"Block34"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [415, 1169.5, 0, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [391, 665.5, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:504"
                    , "data":
                    [24, 504, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":504
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"net.cl:504"
              , "data":
              [16, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":504
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Integer Compare"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:519"
              , "data":
              [16, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":519
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Add"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
          ]
        }
        , {
          "name":"Block35"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [32, 259.5, 0, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [32, 259.5, 0, 0]
                  }
                  , "count":0
                }
              ]
            }
          ]
          , "computation":
          [
          ]
        }
      ]
    }
    , {
      "name":"dataLayer"
      , "compute_units":1
      , "details":
      [
        "Number of compute units: 1"
      ]
      , "resources":
      [
        {
          "name":"Function overhead"
          , "data":
          [1570, 1685, 0, 0]
          , "details":
          [
            "Kernel dispatch logic."
          ]
        }
      ]
      , "basicblocks":
      [
        {
          "name":"Block0.wii_blk"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [222, 222, 0, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [128, 128, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"No Source Line"
                    , "data":
                    [32, 32, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:412"
                    , "data":
                    [62, 62, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":412
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"net.cl:412"
              , "data":
              [16, 112, 0, 4]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":412
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Load"
                    , "data":
                    [16, 48, 0, 0]
                    , "details":
                    [
                      "Work-Item Invariant instruction."
                    ]
                  }
                  , "count":1
                }
                , {
                  "info":
                  {
                    "name":"Mul"
                    , "data":
                    [0, 64, 0, 4]
                    , "details":
                    [
                      "This instruction does not depend on thread ID. Consider moving it, and all related instructions to the host to save area."
                      , "Work-Item Invariant instruction."
                    ]
                  }
                  , "count":2
                }
              ]
            }
          ]
        }
        , {
          "name":"Block1"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [485, 1992, 1, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [128, 374, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"No Source Line"
                    , "data":
                    [357, 1618, 1, 0]
                  }
                  , "count":0
                }
              ]
            }
            , {
              "name":"Cluster logic"
              , "data":
              [872, 2008, 8, 0]
              , "details":
              [
                "Logic required to efficiently support sets of operations that do not stall. This area cannot be affected directly."
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"No Source Line"
              , "data":
              [16, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":""
                    , "line":0
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Integer Compare"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:412"
              , "data":
              [32, 64, 0, 4]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":412
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Add"
                    , "data":
                    [32, 0, 0, 0]
                  }
                  , "count":2
                }
                , {
                  "info":
                  {
                    "name":"Mul"
                    , "data":
                    [0, 64, 0, 4]
                  }
                  , "count":2
                }
              ]
            }
          ]
        }
        , {
          "name":"Block2"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [510, 1789.5, 5, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [65, 162.5, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"No Source Line"
                    , "data":
                    [58.9667, 122.6, 1.33333, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:412"
                    , "data":
                    [386.033, 1504.4, 3.66667, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":412
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"No Source Line"
              , "data":
              [16, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":""
                    , "line":0
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Integer Compare"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:412"
              , "data":
              [1315, 4658, 35, 1]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":412
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Add"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
                , {
                  "info":
                  {
                    "name":"Fmul"
                    , "data":
                    [34, 48, 0, 1]
                  }
                  , "count":1
                }
                , {
                  "info":
                  {
                    "name":"Load"
                    , "data":
                    [802, 2394, 18, 0]
                  }
                  , "count":2
                }
                , {
                  "info":
                  {
                    "name":"Pointer Computation"
                    , "data":
                    [64, 0, 0, 0]
                  }
                  , "count":2
                }
                , {
                  "info":
                  {
                    "name":"Store"
                    , "data":
                    [399, 2216, 17, 0]
                  }
                  , "count":1
                }
              ]
            }
          ]
        }
        , {
          "name":"Block3"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [32, 96.5, 0, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [32, 96.5, 0, 0]
                  }
                  , "count":0
                }
              ]
            }
          ]
          , "computation":
          [
          ]
        }
      ]
    }
    , {
      "name":"outputLayer"
      , "compute_units":1
      , "details":
      [
        "Number of compute units: 1"
      ]
      , "resources":
      [
        {
          "name":"Function overhead"
          , "data":
          [1570, 1685, 0, 0]
          , "details":
          [
            "Kernel dispatch logic."
          ]
        }
      ]
      , "basicblocks":
      [
        {
          "name":"Block36.wii_blk"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [222, 222, 0, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [128, 128, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"No Source Line"
                    , "data":
                    [32, 32, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:537"
                    , "data":
                    [62, 62, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":537
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"net.cl:537"
              , "data":
              [16, 112, 0, 4]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":537
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Load"
                    , "data":
                    [16, 48, 0, 0]
                    , "details":
                    [
                      "Work-Item Invariant instruction."
                    ]
                  }
                  , "count":1
                }
                , {
                  "info":
                  {
                    "name":"Mul"
                    , "data":
                    [0, 64, 0, 4]
                    , "details":
                    [
                      "This instruction does not depend on thread ID. Consider moving it, and all related instructions to the host to save area."
                      , "Work-Item Invariant instruction."
                    ]
                  }
                  , "count":2
                }
              ]
            }
          ]
        }
        , {
          "name":"Block37"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [485, 1938, 1, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [128, 320, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"No Source Line"
                    , "data":
                    [357, 1618, 1, 0]
                  }
                  , "count":0
                }
              ]
            }
            , {
              "name":"Cluster logic"
              , "data":
              [872, 2008, 8, 0]
              , "details":
              [
                "Logic required to efficiently support sets of operations that do not stall. This area cannot be affected directly."
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"No Source Line"
              , "data":
              [16, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":""
                    , "line":0
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Integer Compare"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:537"
              , "data":
              [32, 64, 0, 4]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":537
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Add"
                    , "data":
                    [32, 0, 0, 0]
                  }
                  , "count":2
                }
                , {
                  "info":
                  {
                    "name":"Mul"
                    , "data":
                    [0, 64, 0, 4]
                  }
                  , "count":2
                }
              ]
            }
          ]
        }
        , {
          "name":"Block38"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [279, 967.5, 5, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [65, 162.5, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"No Source Line"
                    , "data":
                    [59.4167, 123, 1.33333, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:537"
                    , "data":
                    [154.583, 682, 3.66667, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":537
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"No Source Line"
              , "data":
              [16, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":""
                    , "line":0
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Integer Compare"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:537"
              , "data":
              [964, 4233, 30, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":537
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Add"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
                , {
                  "info":
                  {
                    "name":"Load"
                    , "data":
                    [485, 2017, 13, 0]
                  }
                  , "count":1
                }
                , {
                  "info":
                  {
                    "name":"Pointer Computation"
                    , "data":
                    [64, 0, 0, 0]
                  }
                  , "count":2
                }
                , {
                  "info":
                  {
                    "name":"Store"
                    , "data":
                    [399, 2216, 17, 0]
                  }
                  , "count":1
                }
              ]
            }
          ]
        }
        , {
          "name":"Block39"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [32, 96.5, 0, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [32, 96.5, 0, 0]
                  }
                  , "count":0
                }
              ]
            }
          ]
          , "computation":
          [
          ]
        }
      ]
    }
    , {
      "name":"paddingLayer"
      , "compute_units":1
      , "details":
      [
        "Number of compute units: 1"
      ]
      , "resources":
      [
        {
          "name":"Function overhead"
          , "data":
          [1570, 1685, 0, 0]
          , "details":
          [
            "Kernel dispatch logic."
          ]
        }
      ]
      , "basicblocks":
      [
        {
          "name":"Block10"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [262, 723, 0, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [228, 374, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:430"
                    , "data":
                    [34, 349, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":430
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"net.cl:430"
              , "data":
              [32, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":430
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Add"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
                , {
                  "info":
                  {
                    "name":"Integer Compare"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
          ]
        }
        , {
          "name":"Block11"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [32, 177.5, 0, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [32, 177.5, 0, 0]
                  }
                  , "count":0
                }
              ]
            }
          ]
          , "computation":
          [
          ]
        }
        , {
          "name":"Block4.wii_blk"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [251, 251, 0, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [128, 128, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"No Source Line"
                    , "data":
                    [59, 59, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:430"
                    , "data":
                    [64, 64, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":430
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"net.cl:430"
              , "data":
              [8, 72, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":430
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Load"
                    , "data":
                    [8, 72, 0, 0]
                    , "details":
                    [
                      "Work-Item Invariant instruction."
                    ]
                  }
                  , "count":2
                }
              ]
            }
          ]
        }
        , {
          "name":"Block5"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [252, 1687, 0, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [128, 504, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"No Source Line"
                    , "data":
                    [32.3333, 125.833, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:430"
                    , "data":
                    [91.6667, 1057.17, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":430
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"No Source Line"
              , "data":
              [48, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":""
                    , "line":0
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Integer Compare"
                    , "data":
                    [48, 0, 0, 0]
                  }
                  , "count":3
                }
              ]
            }
            , {
              "name":"net.cl:430"
              , "data":
              [842, 1142, 26, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":430
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Load"
                    , "data":
                    [842, 1142, 26, 0]
                    , "details":
                    [
                      "Load with a private 64 kilobit cache. Cache is not shared with any other load. It is flushed on kernel start. Use Dynamic Profiler to verify cache effectiveness. Other kernels should not be updating the data in global memory while this kernel is using it. Cache is created when memory access pattern is data-dependent or appears to be repetitive. Simplify access pattern or mark pointer as 'volatile' to disable generation of this cache."
                    ]
                  }
                  , "count":2
                }
              ]
            }
          ]
        }
        , {
          "name":"Block6"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [253, 927.5, 0, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [227, 535.5, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:430"
                    , "data":
                    [26, 392, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":430
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"net.cl:430"
              , "data":
              [0, 32, 0, 2]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":430
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Mul"
                    , "data":
                    [0, 32, 0, 2]
                  }
                  , "count":1
                }
              ]
            }
          ]
        }
        , {
          "name":"Block7"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [351, 1580, 0, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [291, 696, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"No Source Line"
                    , "data":
                    [54.3, 807.15, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:430"
                    , "data":
                    [5.7, 76.85, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":430
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
            , {
              "name":"Cluster logic"
              , "data":
              [218, 502, 2, 0]
              , "details":
              [
                "Logic required to efficiently support sets of operations that do not stall. This area cannot be affected directly."
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"No Source Line"
              , "data":
              [16, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":""
                    , "line":0
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Integer Compare"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:430"
              , "data":
              [48, 32, 0, 2]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":430
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Add"
                    , "data":
                    [32, 0, 0, 0]
                  }
                  , "count":2
                }
                , {
                  "info":
                  {
                    "name":"Integer Compare"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
                , {
                  "info":
                  {
                    "name":"Mul"
                    , "data":
                    [0, 32, 0, 2]
                  }
                  , "count":1
                }
              ]
            }
          ]
        }
        , {
          "name":"Block8"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [1613.67, 5563.67, 13.9167, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [358, 863, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"No Source Line"
                    , "data":
                    [745.333, 2948.23, 5.25, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:430"
                    , "data":
                    [510.333, 1752.43, 8.66667, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":430
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
            , {
              "name":"Cluster logic"
              , "data":
              [1215.33, 2436.33, 9.08333, 0]
              , "details":
              [
                "Logic required to efficiently support sets of operations that do not stall. This area cannot be affected directly."
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"No Source Line"
              , "data":
              [16, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":""
                    , "line":0
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Integer Compare"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:430"
              , "data":
              [1545, 6282, 43, 4]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":430
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Add"
                    , "data":
                    [80, 0, 0, 0]
                  }
                  , "count":5
                }
                , {
                  "info":
                  {
                    "name":"Integer Compare"
                    , "data":
                    [32, 0, 0, 0]
                  }
                  , "count":2
                }
                , {
                  "info":
                  {
                    "name":"Load"
                    , "data":
                    [938, 4002, 26, 0]
                  }
                  , "count":2
                }
                , {
                  "info":
                  {
                    "name":"Mul"
                    , "data":
                    [0, 64, 0, 4]
                  }
                  , "count":2
                }
                , {
                  "info":
                  {
                    "name":"Pointer Computation"
                    , "data":
                    [64, 0, 0, 0]
                  }
                  , "count":2
                }
                , {
                  "info":
                  {
                    "name":"Store"
                    , "data":
                    [399, 2216, 17, 0]
                  }
                  , "count":1
                }
                , {
                  "info":
                  {
                    "name":"Sub"
                    , "data":
                    [32, 0, 0, 0]
                  }
                  , "count":2
                }
              ]
            }
          ]
        }
        , {
          "name":"Block9"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [315, 1035, 0, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [291, 470, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:430"
                    , "data":
                    [24, 565, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":430
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"net.cl:430"
              , "data":
              [64, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":430
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Add"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
                , {
                  "info":
                  {
                    "name":"Integer Compare"
                    , "data":
                    [48, 0, 0, 0]
                  }
                  , "count":3
                }
              ]
            }
          ]
        }
      ]
    }
    , {
      "name":"poolingLayer"
      , "compute_units":1
      , "details":
      [
        "Number of compute units: 1"
        , "The following loop is nested at depth greater than 3. Reducing the depth of this nested loop will save area:\n- net.cl:455 with depth 4"
      ]
      , "resources":
      [
        {
          "name":"Function overhead"
          , "data":
          [1570, 1685, 0, 0]
          , "details":
          [
            "Kernel dispatch logic."
          ]
        }
      ]
      , "basicblocks":
      [
        {
          "name":"Block12.wii_blk"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [251, 251, 0, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [128, 128, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"No Source Line"
                    , "data":
                    [59, 59, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:451"
                    , "data":
                    [64, 64, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":451
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"net.cl:451"
              , "data":
              [8, 72, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":451
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Load"
                    , "data":
                    [8, 72, 0, 0]
                    , "details":
                    [
                      "Work-Item Invariant instruction."
                    ]
                  }
                  , "count":2
                }
              ]
            }
          ]
        }
        , {
          "name":"Block13"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [746.6, 2385.35, 0, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [128, 374, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"No Source Line"
                    , "data":
                    [119, 811.75, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:451"
                    , "data":
                    [182.4, 736.067, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":451
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:452"
                    , "data":
                    [208.133, 260.8, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":452
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:455"
                    , "data":
                    [109.067, 202.733, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":455
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
            , {
              "name":"Cluster logic"
              , "data":
              [323.4, 653.65, 2, 0]
              , "details":
              [
                "Logic required to efficiently support sets of operations that do not stall. This area cannot be affected directly."
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"net.cl:451"
              , "data":
              [98.3333, 241, 4.33333, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":451
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Integer Compare"
                    , "data":
                    [48, 0, 0, 0]
                  }
                  , "count":3
                }
                , {
                  "info":
                  {
                    "name":"Load"
                    , "data":
                    [50.3333, 241, 4.33333, 0]
                    , "details":
                    [
                      "Load with a private 64 kilobit cache. Cache is not shared with any other load. It is flushed on kernel start. Use Dynamic Profiler to verify cache effectiveness. Other kernels should not be updating the data in global memory while this kernel is using it. Cache is created when memory access pattern is data-dependent or appears to be repetitive. Simplify access pattern or mark pointer as 'volatile' to disable generation of this cache."
                    ]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:452"
              , "data":
              [50.3333, 273, 4.33333, 2]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":452
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Load"
                    , "data":
                    [50.3333, 241, 4.33333, 0]
                    , "details":
                    [
                      "Load with a private 64 kilobit cache. Cache is not shared with any other load. It is flushed on kernel start. Use Dynamic Profiler to verify cache effectiveness. Other kernels should not be updating the data in global memory while this kernel is using it. Cache is created when memory access pattern is data-dependent or appears to be repetitive. Simplify access pattern or mark pointer as 'volatile' to disable generation of this cache."
                    ]
                  }
                  , "count":1
                }
                , {
                  "info":
                  {
                    "name":"Mul"
                    , "data":
                    [0, 32, 0, 2]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:455"
              , "data":
              [50.3333, 241, 4.33333, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":455
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Load"
                    , "data":
                    [50.3333, 241, 4.33333, 0]
                    , "details":
                    [
                      "Load with a private 64 kilobit cache. Cache is not shared with any other load. It is flushed on kernel start. Use Dynamic Profiler to verify cache effectiveness. Other kernels should not be updating the data in global memory while this kernel is using it. Cache is created when memory access pattern is data-dependent or appears to be repetitive. Simplify access pattern or mark pointer as 'volatile' to disable generation of this cache."
                    ]
                  }
                  , "count":1
                }
              ]
            }
          ]
        }
        , {
          "name":"Block14"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [358, 1285, 0, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [358, 863, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:451"
                    , "data":
                    [0, 422, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":451
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"net.cl:452"
              , "data":
              [0, 32, 0, 2]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":452
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Mul"
                    , "data":
                    [0, 32, 0, 2]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:462"
              , "data":
              [0, 32, 0, 2]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":462
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Mul"
                    , "data":
                    [0, 32, 0, 2]
                  }
                  , "count":1
                }
              ]
            }
          ]
        }
        , {
          "name":"Block15"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [1121, 5945.5, 1.5, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [454, 1103, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"No Source Line"
                    , "data":
                    [523, 3200, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:451"
                    , "data":
                    [119, 1419.5, 1.5, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":451
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:452"
                    , "data":
                    [25, 223, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":452
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
            , {
              "name":"Cluster logic"
              , "data":
              [944, 2162.5, 9.5, 0]
              , "details":
              [
                "Logic required to efficiently support sets of operations that do not stall. This area cannot be affected directly."
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"No Source Line"
              , "data":
              [32, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":""
                    , "line":0
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Integer Compare"
                    , "data":
                    [32, 0, 0, 0]
                  }
                  , "count":2
                }
              ]
            }
            , {
              "name":"net.cl:452"
              , "data":
              [549, 2081, 13, 4]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":452
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Add"
                    , "data":
                    [32, 0, 0, 0]
                  }
                  , "count":2
                }
                , {
                  "info":
                  {
                    "name":"Load"
                    , "data":
                    [485, 2017, 13, 0]
                  }
                  , "count":1
                }
                , {
                  "info":
                  {
                    "name":"Mul"
                    , "data":
                    [0, 64, 0, 4]
                  }
                  , "count":2
                }
                , {
                  "info":
                  {
                    "name":"Pointer Computation"
                    , "data":
                    [32, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:462"
              , "data":
              [16, 32, 0, 2]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":462
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Add"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
                , {
                  "info":
                  {
                    "name":"Mul"
                    , "data":
                    [0, 32, 0, 2]
                  }
                  , "count":1
                }
              ]
            }
          ]
        }
        , {
          "name":"Block16"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [646, 1551, 0, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [646, 1551, 0, 0]
                  }
                  , "count":0
                }
              ]
            }
          ]
          , "computation":
          [
          ]
        }
        , {
          "name":"Block17"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [1289.33, 5422.75, 5, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [742, 1759, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"No Source Line"
                    , "data":
                    [255.2, 2060.87, 1.56667, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:455"
                    , "data":
                    [86.0333, 709.033, 1.23333, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":455
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:456"
                    , "data":
                    [65.6, 192.6, 1.2, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":456
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:457"
                    , "data":
                    [28.5, 226.25, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":457
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:460"
                    , "data":
                    [112, 475, 1, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":460
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
            , {
              "name":"Cluster logic"
              , "data":
              [680.667, 1790.25, 4, 0]
              , "details":
              [
                "Logic required to efficiently support sets of operations that do not stall. This area cannot be affected directly."
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"net.cl:455"
              , "data":
              [16, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":455
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Integer Compare"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:456"
              , "data":
              [16, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":456
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Integer Compare"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:457"
              , "data":
              [581, 2049, 13, 2]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":457
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Add"
                    , "data":
                    [64, 0, 0, 0]
                  }
                  , "count":4
                }
                , {
                  "info":
                  {
                    "name":"Load"
                    , "data":
                    [485, 2017, 13, 0]
                  }
                  , "count":1
                }
                , {
                  "info":
                  {
                    "name":"Mul"
                    , "data":
                    [0, 32, 0, 2]
                  }
                  , "count":1
                }
                , {
                  "info":
                  {
                    "name":"Pointer Computation"
                    , "data":
                    [32, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:460"
              , "data":
              [63, 28, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":460
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Floating Point Compare"
                    , "data":
                    [63, 28, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
          ]
        }
        , {
          "name":"Block18"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [1105.5, 4181.5, 3, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [646, 1017, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"No Source Line"
                    , "data":
                    [194, 1015, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:451"
                    , "data":
                    [189.833, 1514, 2.5, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":451
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:452"
                    , "data":
                    [45.3333, 239.5, 0.5, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":452
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:462"
                    , "data":
                    [30.3333, 396, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":462
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
            , {
              "name":"Cluster logic"
              , "data":
              [764.5, 1466.5, 7, 0]
              , "details":
              [
                "Logic required to efficiently support sets of operations that do not stall. This area cannot be affected directly."
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"net.cl:451"
              , "data":
              [16, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":451
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Integer Compare"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:452"
              , "data":
              [533, 2049, 13, 2]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":452
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Add"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
                , {
                  "info":
                  {
                    "name":"Load"
                    , "data":
                    [485, 2017, 13, 0]
                  }
                  , "count":1
                }
                , {
                  "info":
                  {
                    "name":"Mul"
                    , "data":
                    [0, 32, 0, 2]
                  }
                  , "count":1
                }
                , {
                  "info":
                  {
                    "name":"Pointer Computation"
                    , "data":
                    [32, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:462"
              , "data":
              [447, 2216, 17, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":462
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Add"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
                , {
                  "info":
                  {
                    "name":"Pointer Computation"
                    , "data":
                    [32, 0, 0, 0]
                  }
                  , "count":1
                }
                , {
                  "info":
                  {
                    "name":"Store"
                    , "data":
                    [399, 2216, 17, 0]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:463"
              , "data":
              [16, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":463
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Add"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
          ]
        }
        , {
          "name":"Block19"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [478, 1344, 0, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [454, 777, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:451"
                    , "data":
                    [24, 567, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":451
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"net.cl:451"
              , "data":
              [16, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":451
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Integer Compare"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:463"
              , "data":
              [16, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":463
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Add"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
          ]
        }
        , {
          "name":"Block20"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [382, 1056, 0, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [358, 585, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:451"
                    , "data":
                    [24, 471, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":451
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"net.cl:451"
              , "data":
              [16, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":451
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Integer Compare"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:463"
              , "data":
              [16, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":463
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Add"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
          ]
        }
        , {
          "name":"Block21"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [32, 243, 0, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [32, 243, 0, 0]
                  }
                  , "count":0
                }
              ]
            }
          ]
          , "computation":
          [
          ]
        }
      ]
    }
    , {
      "name":"reluLayer"
      , "compute_units":1
      , "details":
      [
        "Number of compute units: 1"
      ]
      , "resources":
      [
        {
          "name":"Function overhead"
          , "data":
          [1570, 1685, 0, 0]
          , "details":
          [
            "Kernel dispatch logic."
          ]
        }
      ]
      , "basicblocks":
      [
        {
          "name":"Block22.wii_blk"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [222, 222, 0, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [128, 128, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"No Source Line"
                    , "data":
                    [32, 32, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:480"
                    , "data":
                    [62, 62, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":480
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"net.cl:480"
              , "data":
              [16, 48, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":480
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Load"
                    , "data":
                    [16, 48, 0, 0]
                    , "details":
                    [
                      "Work-Item Invariant instruction."
                    ]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:482"
              , "data":
              [0, 64, 0, 4]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":482
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Mul"
                    , "data":
                    [0, 64, 0, 4]
                    , "details":
                    [
                      "This instruction does not depend on thread ID. Consider moving it, and all related instructions to the host to save area."
                      , "Work-Item Invariant instruction."
                    ]
                  }
                  , "count":2
                }
              ]
            }
          ]
        }
        , {
          "name":"Block23"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [485, 1938, 1, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [128, 320, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"No Source Line"
                    , "data":
                    [357, 1618, 1, 0]
                  }
                  , "count":0
                }
              ]
            }
            , {
              "name":"Cluster logic"
              , "data":
              [872, 2008, 8, 0]
              , "details":
              [
                "Logic required to efficiently support sets of operations that do not stall. This area cannot be affected directly."
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"No Source Line"
              , "data":
              [16, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":""
                    , "line":0
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Integer Compare"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:480"
              , "data":
              [32, 64, 0, 4]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":480
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Add"
                    , "data":
                    [32, 0, 0, 0]
                  }
                  , "count":2
                }
                , {
                  "info":
                  {
                    "name":"Mul"
                    , "data":
                    [0, 64, 0, 4]
                  }
                  , "count":2
                }
              ]
            }
          ]
        }
        , {
          "name":"Block24"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [332, 1174.5, 5, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [65, 162.5, 0, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"No Source Line"
                    , "data":
                    [59.4167, 123, 1.33333, 0]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:480"
                    , "data":
                    [48.75, 93, 1.33333, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":480
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:481"
                    , "data":
                    [158.833, 668, 2.33333, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":481
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
                , {
                  "info":
                  {
                    "name":"net.cl:482"
                    , "data":
                    [0, 128, 0, 0]
                    , "debug":
                    [
                      [
                        {
                          "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                          , "line":482
                        }
                      ]
                    ]
                  }
                  , "count":0
                }
              ]
            }
          ]
          , "computation":
          [
            {
              "name":"No Source Line"
              , "data":
              [16, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":""
                    , "line":0
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Integer Compare"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:481"
              , "data":
              [1011, 4261, 30, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":481
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Floating Point Compare"
                    , "data":
                    [63, 28, 0, 0]
                  }
                  , "count":1
                }
                , {
                  "info":
                  {
                    "name":"Load"
                    , "data":
                    [485, 2017, 13, 0]
                  }
                  , "count":1
                }
                , {
                  "info":
                  {
                    "name":"Pointer Computation"
                    , "data":
                    [64, 0, 0, 0]
                  }
                  , "count":2
                }
                , {
                  "info":
                  {
                    "name":"Store"
                    , "data":
                    [399, 2216, 17, 0]
                  }
                  , "count":1
                }
              ]
            }
            , {
              "name":"net.cl:482"
              , "data":
              [16, 0, 0, 0]
              , "debug":
              [
                [
                  {
                    "filename":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl"
                    , "line":482
                  }
                ]
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Add"
                    , "data":
                    [16, 0, 0, 0]
                  }
                  , "count":1
                }
              ]
            }
          ]
        }
        , {
          "name":"Block25"
          , "resources":
          [
            {
              "name":"State"
              , "data":
              [32, 96.5, 0, 0]
              , "details":
              [
                "Resources for live values and control logic. To reduce this area:\n- reduce size of local variables\n- reduce scope of local variables, localizing them as much as possible\n- reduce number of nested loops"
              ]
              , "subinfos":
              [
                {
                  "info":
                  {
                    "name":"Control flow logic"
                    , "data":
                    [32, 96.5, 0, 0]
                  }
                  , "count":0
                }
              ]
            }
          ]
          , "computation":
          [
          ]
        }
      ]
    }
  ]
}
;var fileJSON=[{"index":0, "path":"/home/zach/project/inc/caffe-fpga-opencl-v2/kernels/net/net.cl", "name":"net.cl", "content":"/**\012 *  Customization\012 */\012\012//////////////////////////////////////////////////////////////////////\012/**\012 * Don't change anything below if you don't understand.\012 */\012/**\012 *  Customization\012 */\012#ifdef __xilinx__\012// #define BUFFER_SIZE 15680\012#endif\012// #define DEBUG\012typedef float dType;\012typedef int BOOL;\012//////////////////////////////////////////////////////////////////////\012/**\012 * Don't change anything below if you don't understand.\012 */\012#define GLOBAL_SIZE_0 get_global_size(0)\012#define GLOBAL_SIZE_1 get_global_size(1)\012#define GLOBAL_SIZE_2 get_global_size(2)\012#define GLOBAL_SIZE (GLOBAL_SIZE_0 * GLOBAL_SIZE_1 * GLOBAL_SIZE_2)\012\012#define LOCAL_SIZE_0 get_local_size(0)\012#define LOCAL_SIZE_1 get_local_size(1)\012#define LOCAL_SIZE_2 get_local_size(2)\012#define LOCAL_SIZE (LOCAL_SIZE_0 * LOCAL_SIZE_1 * LOCAL_SIZE_2)\012\012#define NUM_GROUP_0 get_num_groups(0)\012#define NUM_GROUP_1 get_num_groups(1)\012#define NUM_GROUP_2 get_num_groups(2)\012#define GROUP_SIZE (GROUP_SIZE_0 * GROUP_SIZE_1 * GROUP_SIZE_2)\012\012#define GLOBAL_ID_0 get_global_id(0)\012#define GLOBAL_ID_1 get_global_id(1)\012#define GLOBAL_ID_2 get_global_id(2)\012#define GLOBAL_ID                                                              \\\012  ((GLOBAL_ID_0 * GLOBAL_SIZE_1 * GLOBAL_SIZE_2) +                             \\\012   (GLOBAL_ID_1 * GLOBAL_SIZE_2) + GLOBAL_ID_2)\012\012#define LOCAL_ID_0 get_local_id(0)\012#define LOCAL_ID_1 get_local_id(1)\012#define LOCAL_ID_2 get_local_id(2)\012#define LOCAL_ID                                                               \\\012  ((LOCAL_ID_0 * LOCAL_SIZE_1 * LOCAL_SIZE_2) + (LOCAL_ID_1 * LOCAL_SIZE_2) +  \\\012   LOCAL_ID_2)\012\012#define GROUP_ID_0 get_group_id(0) // channel\012#define GROUP_ID_1 get_group_id(1) // height\012#define GROUP_ID_2 get_group_id(2) // width\012#define GROUP_ID                                                               \\\012  ((GROUP_ID_0 * GROUP_SIZE_1 * GROUP_SIZE_2) + (GROUP_ID_1 * GROUP_SIZE_2) +  \\\012   GROUP_ID_2)\012\012/**\012 * [ELM feature map memory accessment helper]\012 * @param  array     [feature map memory, assume to be\012 * memory[channel][height][width]]\012 * @param  channelId [channel id]\012 * @param  nHeight   [height (2nd dimension size)]\012 * @param  heightId  [height id]\012 * @param  nWidth    [width (1st dimension size)]\012 * @param  widthId   [width id]\012 * @return           [value dType]\012 */\012#define ELM(array, channelId, nHeight, heightId, nWidth, widthId)              \\\012  (array)[(channelId) * (nHeight) * (nWidth) + (heightId) * (nWidth) +         \\\012          (widthId)]\012\012/**\012 * [WELM weight memory accessment helper]\012 * @param  weight     [weight memory, assume to be\012 * memory[numFilter][channel][height][width]]\012 * @param  filterId   [filter id]\012 * @param  nChannel   [number of channel (3rd dimension size)]\012 * @param  channelId  [channel id]\012 * @param  kernelSize [kernel size (2nd,1st dimension size)]\012 * @param  heightId   [height id]\012 * @param  widthId    [width id]\012 * @return            [value dType]\012 */\012#define WELM(weight, filterId, nChannel, channelId, kernelSize, heightId,      \\\012             widthId)                                                          \\\012  (weight)[(filterId) * (kernelSize) * (kernelSize) * (nChannel) +             \\\012           (channelId) * (kernelSize) * (kernelSize) +                         \\\012           (heightId) * (kernelSize) + (widthId)]\012\012/**\012 * [WORK_ITEM_BEGIN\012 * Utility to write simple 1D parrallel code for opencl kernel to process 1d\012 * data, code block BEGIN]\012 * @param  counter [current global id of this work item to be used in parrallel\012 * code block]\012 * @param  total   [the total number of data to be processed]\012 * @param  id      [starting global id of this work item]\012 * @return         [code generated]\012 */\012#define WORK_ITEM_BEGIN(counter, total, id)                                    \\\012  __private int counter = (id);                                                \\\012  while ((counter) < (total)) {\012\012/**\012 * [WORK_ITEM_END\012 * Utility to write simple 1D parrallel code for opencl kernel to process 1d\012 * data, code block END\012 * **everything in between will execute per work item by <counter>**]\012 * @param  counter   [current global id of this work item]\012 * @param  groupSize [global size of all work items]\012 * @return           [code generated]\012 */\012#define WORK_ITEM_END(counter, groupSize)                                      \\\012  (counter) += (groupSize);                                                    \\\012  }\012\012/**\012 * [WORK_ITEM_3D_BEGIN\012 * Utility to write simple 3D parrallel code for opencl kernel to process 3d\012 * feature map, BEGIN\012 * Parallel code block start, **everything in between will execute per work item\012 * by <channelCounter, heightCounter, widthCounter>**]\012 * @param  channelCounter [current work item channel id that will be used in\012 * code block inside]\012 * @param  numChannel     [how many channel we have, usually\012 * param.outputChannel]\012 * @param  channelId      [start global id on channel, usually GLOBAL_SIZE_0]\012 * @param  heightCounter  [current work item height id that will be used in code\012 * block inside]\012 * @param  numHeight      [feature map height, usually param.outputHeight]\012 * @param  heightId       [start global id on height, usually GLOBAL_SIZE_1]\012 * @param  widthCounter   [current work item width id that will be used in code\012 * block inside]\012 * @param  numWidth       [feature map width, usually param.outputWidth]\012 * @param  widthId        [start global id on width, usually GLOBAL_SIZE_2]\012 * @return                [code generated]\012 */\012#define WORK_ITEM_3D_BEGIN(channelCounter, numChannel, channelId,              \\\012                           heightCounter, numHeight, heightId, widthCounter,   \\\012                           numWidth, widthId)                                  \\\012  __private int channelCounter = (channelId), heightCounter, widthCounter;     \\\012  while (channelCounter < (numChannel)) {                                      \\\012    heightCounter = (heightId);                                                \\\012    while (heightCounter < (numHeight)) {                                      \\\012      widthCounter = (widthId);                                                \\\012      while (widthCounter < (numWidth)) {\012\012/**\012 * [WORK_ITEM_3D_END\012 * Utility to write simple 3D parrallel code for opencl kernel to process 3d\012 * feature map, END\012 * Parallel code block end, **everything in between will execute per work item\012 * by <channelCounter, heightCounter, widthCounter>**]\012 * @param  channelCounter   [current work item channel id that will be used in\012 * code block inside]\012 * @param  channelGroupSize [global size of work items on channel dimension]\012 * @param  heightCounter    [current work item height id that will be used in\012 * code block inside]\012 * @param  heightGroupSize  [global size of work items on height dimension]\012 * @param  widthCounter     [current work item width id that will be used in\012 * code block inside]\012 * @param  widthGroupSize   [global size of work items on width dimension]\012 * @return                  [code generated]\012 */\012#define WORK_ITEM_3D_END(channelCounter, channelGroupSize, heightCounter,      \\\012                         heightGroupSize, widthCounter, widthGroupSize)        \\\012  widthCounter += (widthGroupSize);                                            \\\012  }                                                                            \\\012  heightCounter += (heightGroupSize);                                          \\\012  }                                                                            \\\012  channelCounter += (channelGroupSize);                                        \\\012  }\012\012/**\012 * [LOAD_DATA load data from src to dest]\012 * @param  src       [memory source]\012 * @param  dest      [memory destination]\012 * @param  total     [total number of data will be transfered, usually\012 * inputTotalDataNum]\012 * @param  id        [description the gloabl id of current work item]\012 * @param  groupSize [description the global size of this opencl kernel]\012 */\012#define LOAD_DATA(src, dest, total, id, groupSize)                             \\\012  WORK_ITEM_BEGIN(loadDataCounter, total, id)                                  \\\012  (dest)[loadDataCounter] = (src)[loadDataCounter];                            \\\012  WORK_ITEM_END(loadDataCounter, groupSize)\012\012/**\012 * [MEM_SET set memory to constant]\012 * @param  dest      [memory destination]\012 * @param constant   [value]\012 * @param  total     [total number of data will be transfered, usually\012 * inputTotalDataNum]\012 * @param  id        [description the gloabl id of current work item]\012 * @param  groupSize [description the global size of this opencl kernel]\012 */\012#define MEMSET(dest, cstt, total, id, groupSize)                               \\\012  WORK_ITEM_BEGIN(loadDataCounter, total, id)                                  \\\012  (dest)[loadDataCounter] = (cstt);                                            \\\012  WORK_ITEM_END(loadDataCounter, groupSize)\012\012/**\012 * [LOAD_DATA_SCALE load data from src to dest, with a scale parameter]\012 * @param  src       [memory source]\012 * @param  dest      [memory destination]\012 * @param  total     [total number of data will be transfered, usually\012 * inputTotalDataNum]\012 * @param  id        [description the gloabl id of current work item]\012 * @param  groupSize [description the global size of this opencl kernel]\012 * @param  scale     [the scaling factor]\012 * @return           [code generated]\012 */\012/**\012 * # Debug Log #\012 *\012 * - scale is good, but (src)[loadDataCounterScale] is always zero.\012 *   printf(\"copying id = %d, value = %f \\n\", loadDataCounterScale, \\\012          (src)[loadDataCounterScale], scale);\012 */\012#define LOAD_DATA_SCALE(src, dest, total, id, groupSize, scale)                \\\012  WORK_ITEM_BEGIN(loadDataCounterScale, total, id)                             \\\012  (dest)[loadDataCounterScale] = (src)[loadDataCounterScale] * (scale);        \\\012  WORK_ITEM_END(loadDataCounterScale, groupSize)\012\012/**\012 * [LOAD_DATA_PAD description]\012 * @param  src              [memory source]\012 * @param  dest             [memory destination]\012 * @param  numChannel       [how many channel of the input feature map]\012 * @param  channelGroupSize [the global size on the channel dimension]\012 * @param  channelId        [the global id on the channel dimension]\012 * @param  numHeight        [the height of each input feature map]\012 * @param  heightGroupSize  [global size on height]\012 * @param  heightId         [global id on height]\012 * @param  numWidth         [the width of each input feature map]\012 * @param  widthGroupSize   [global size on width]\012 * @param  widthId          [global id on width]\012 * @param  pad              [padding parameter]\012 * @return                  [code generated]\012 */\012#define LOAD_DATA_PAD(src, dest, numChannel, channelGroupSize, channelId,      \\\012                      numHeight, heightGroupSize, heightId, numWidth,          \\\012                      widthGroupSize, widthId, pad)                            \\\012  WORK_ITEM_3D_BEGIN(channelCounter, numChannel, channelId, heightCounter,     \\\012                     numHeight, heightId, widthCounter, numWidth, widthId)     \\\012  ELM(dest, channelCounter, numHeight + 2 * (pad), heightCounter + (pad),      \\\012      numWidth + 2 * (pad), widthCounter + (pad)) =                            \\\012      ELM(src, channelCounter, numHeight, heightCounter, numWidth,             \\\012          widthCounter);                                                       \\\012  WORK_ITEM_3D_END(channelCounter, channelGroupSize, heightCounter,            \\\012                   heightGroupSize, widthCounter, widthGroupSize)\012\012/**\012 * [LOAD_DATA_PAD description]\012 * @param  src              [memory source]\012 * @param  dest             [memory destination]\012 * @param  numChannel       [how many channel of the output feature map]\012 * @param  channelGroupSize [the global size on the channel dimension]\012 * @param  channelId        [the global id on the channel dimension]\012 * @param  numHeight        [the height of each output feature map]\012 * @param  heightGroupSize  [global size on height]\012 * @param  heightId         [global id on height]\012 * @param  numWidth         [the width of each output feature map]\012 * @param  widthGroupSize   [global size on width]\012 * @param  widthId          [global id on width]\012 * @param  pad              [padding parameter]\012 * @return                  [code generated]\012 */\012#define LOAD_DATA_PAD_ENSURE_ZERO(src, dest, numChannel, channelGroupSize,     \\\012                                  channelId, inputHeight, outputHeight,        \\\012                                  heightGroupSize, heightId, inputWidth,       \\\012                                  outputWidth, widthGroupSize, widthId, pad)   \\\012  __private bool zero = false;                                                 \\\012  WORK_ITEM_3D_BEGIN(channelCounter, numChannel, channelId, heightCounter,     \\\012                     outputHeight, heightId, widthCounter, outputWidth,        \\\012                     widthId)                                                  \\\012  zero = heightCounter < pad || widthCounter < pad ||                          \\\012         (outputWidth - widthCounter - 1) < pad ||                             \\\012         (outputHeight - heightCounter - 1) < pad;                             \\\012  ELM(dest, channelCounter, outputHeight, heightCounter, outputWidth,          \\\012      widthCounter) =                                                          \\\012      zero ? 0 : ELM(src, channelCounter, inputHeight, heightCounter - (pad),  \\\012                     inputWidth, widthCounter - (pad));                        \\\012  WORK_ITEM_3D_END(channelCounter, channelGroupSize, heightCounter,            \\\012                   heightGroupSize, widthCounter, widthGroupSize)\012/**\012 * [RELU(x) relu activation]\012 * @param  x [input value]\012 * @return   [x if x > 0, else 0]\012 */\012#define RELU(x) ((x) > 0 ? (x) : 0)\012\012/**\012 * Network Parameter structure, pass parameter from cpp to fpga easily with\012 * this.\012 */\012typedef struct {\012  dType scale;\012  int stride;\012  int kernelSize;\012  int pad;\012  int dilation;\012  int inputChannel;\012  int inputHeight;\012  int inputWidth;\012  int outputChannel;\012  int outputHeight;\012  int outputWidth;\012  int inputTotalDataNum;\012  int outputTotalDataNum; // padding layer also has this!\012} NetParam;\012\012#define readFmBufferId phase[0] == 0\012#define writeFmBufferId phase[0] == 1\012\012#ifdef BUFFER_SIZE\012__global dType fmCache[2][BUFFER_SIZE];\012#define readFmBuffer fmCache[readFmBufferId]  // read==0\012#define writeFmBuffer fmCache[writeFmBufferId] // write==1\012#else\012#define readFmBuffer inputFeatureMap\012#define writeFmBuffer outputFeatureMap\012#endif\012\012/**\012 * [EASY_WORK_ITEM_3D_OUTPUT_BEGIN\012 * Utility to write simple 3D parrallel code for opencl kernel to process 3d\012 * feature map, BEGIN\012 * Assume to use param, GLOBAL_ID.\012 * Parallel code block start, **everything in between will execute per work item\012 * by <channelCounter, heightCounter, widthCounter>**]\012 * @param  channelCounter [current work item channel id that will be used in\012 * code block inside]\012 * @param  heightCounter  [current work item height id that will be used in code\012 * block inside]\012 * @param  widthCounter   [current work item width id that will be used in code\012 * block inside]\012 * @return                [code generated]\012 */\012#define EASY_WORK_ITEM_3D_OUTPUT_BEGIN(channelCounter, heightCounter,          \\\012                                       widthCounter)                           \\\012  WORK_ITEM_3D_BEGIN(channelCounter, param->outputChannel, GLOBAL_ID_0,        \\\012                     heightCounter, param->outputHeight, GLOBAL_ID_1,          \\\012                     widthCounter, param->outputWidth, GLOBAL_ID_2)\012\012/**\012 * [EASY_WORK_ITEM_3D_OUTPUT_END\012 *  Utility to write simple 3D parrallel code for opencl kernel to process 3d\012 * feature map, END\012 *  Assume to use param, GLOBAL_ID.\012 *  Parallel code block end, **everything in between will execute per work item\012 * by <channelCounter, heightCounter, widthCounter>**]\012 * @param  channelCounter [current work item channel id that will be used in\012 * code block inside]\012 * @param  heightCounter  [current work item height id that will be used in code\012 * block inside]\012 * @param  widthCounter   [current work item width id that will be used in code\012 * block inside]\012 * @return                [code generated]\012 */\012#define EASY_WORK_ITEM_3D_OUTPUT_END(channelCounter, heightCounter,            \\\012                                     widthCounter)                             \\\012  WORK_ITEM_3D_END(channelCounter, GLOBAL_SIZE_0, heightCounter,               \\\012                   GLOBAL_SIZE_1, widthCounter, GLOBAL_SIZE_2)\012\012/**\012 * shorter macro for output of feature map in parallel code block.\012 */\012#define OUTPUT_ELM                                                             \\\012  ELM(writeFmBuffer, channelCounter, param->outputHeight, heightCounter,       \\\012      param->outputWidth, widthCounter)\012\012#define print2D(fm, height, width)                                             \\\012  printf(\"\\n\");                                                                \\\012  for (int i = 0; i < height; i++) {                                           \\\012    for (int j = 0; j < width; j++) {                                          \\\012      printf(\"%.2f,\", fm[i * width + j]);                                      \\\012    }                                                                          \\\012    printf(\"\\n\");                                                              \\\012  }                                                                            \\\012  printf(\"\\n\");\012\012#define NOP ;\012\012#ifdef DEBUG\012#define DEBUG_PRINT_INFO(type)                                                 \\\012  printf(\"From Hardware: Global ID %d \" #type \" Layer, phase = %d, readFmBufferId=%d, writeFmBufferId=%d.\\n\",         \\\012         GLOBAL_ID, phase[0], readFmBufferId, writeFmBufferId)\012#define DEBUG_DUMP_DATA_TO_CPU                                                 \\\012  LOAD_DATA(writeFmBuffer, outputFeatureMap, param->outputTotalDataNum,        \\\012            GLOBAL_ID, GLOBAL_SIZE);\012#else\012#define DEBUG_PRINT_INFO(type) NOP\012#define DEBUG_DUMP_DATA_TO_CPU NOP\012#endif\012\012/**\012 * [dataLayer\012 *  data layer to transfer data from input feature map to (output|cache), with\012 * scale]\012 * @param inputFeatureMap  [input feature map]\012 * @param outputFeatureMap [output feature map (won't use if in FPGA optimized\012 * setting)]\012 * @param param            [network parameter]\012 * @param phase            [phase id, for ping pong buffer switching]\012 */\012__kernel void dataLayer(__global dType *inputFeatureMap,\012                        __global dType *outputFeatureMap,\012                        __global NetParam *param, __global BOOL *phase) {\012  DEBUG_PRINT_INFO(\"dataLayer\");\012  LOAD_DATA_SCALE(inputFeatureMap, writeFmBuffer, param->inputTotalDataNum,\012                  GLOBAL_ID, GLOBAL_SIZE, param->scale);\012  DEBUG_DUMP_DATA_TO_CPU;\012}\012\012/**\012 * [paddingLayer pad the feature map, used param.{pad} before convolution layer\012 * and pooling layer]\012 * @param inputFeatureMap  [input feature map]\012 * @param outputFeatureMap [output feature map (won't use if in FPGA optimized\012 * setting)]\012 * @param param            [network parameter]\012 * @param phase            [phase id, for ping pong buffer switching]\012 */\012__kernel void paddingLayer(__global dType *inputFeatureMap,\012                           __global dType *outputFeatureMap,\012                           __global NetParam *param, __global BOOL *phase) {\012  DEBUG_PRINT_INFO(\"paddingLayer\");\012  LOAD_DATA_PAD_ENSURE_ZERO(readFmBuffer, writeFmBuffer, param->outputChannel,\012                            GLOBAL_SIZE_0, GLOBAL_ID_0, param->inputHeight,\012                            param->outputHeight, GLOBAL_SIZE_1, GLOBAL_ID_1,\012                            param->inputWidth, param->outputWidth,\012                            GLOBAL_SIZE_2, GLOBAL_ID_2, param->pad)\012  DEBUG_DUMP_DATA_TO_CPU;\012}\012\012/**\012 * [poolingLayer pooling layer, use param.{stride, kernelSize}]\012 * @param inputFeatureMap  [input feature map]\012 * @param outputFeatureMap [output feature map (won't use if in FPGA optimized\012 * setting)]\012 * @param param            [network parameter]\012 * @param phase            [phase id, for ping pong buffer switching]\012 */\012__kernel void poolingLayer(__global dType *inputFeatureMap,\012                           __global dType *outputFeatureMap,\012                           __global NetParam *param, __global BOOL *phase) {\012  DEBUG_PRINT_INFO(\"poolingLayer\");\012  __private dType maxValue, _temp;\012  EASY_WORK_ITEM_3D_OUTPUT_BEGIN(channelCounter, heightCounter, widthCounter);\012  maxValue = ELM(readFmBuffer, channelCounter, param->inputHeight,\012                 heightCounter * param->stride, param->inputWidth,\012                 widthCounter * param->stride);\012  for (int i = 0; i < param->kernelSize; i++)\012    for (int j = 0; j < param->kernelSize; j++) {\012      _temp = ELM(readFmBuffer, channelCounter, param->inputHeight,\012                  heightCounter * param->stride + i, param->inputWidth,\012                  widthCounter * param->stride + j);\012      maxValue = maxValue > _temp ? maxValue : _temp;\012    }\012  OUTPUT_ELM = maxValue;\012  EASY_WORK_ITEM_3D_OUTPUT_END(channelCounter, heightCounter, widthCounter);\012  DEBUG_DUMP_DATA_TO_CPU;\012}\012\012/**\012 * [reluLayer relu layer, give all data relu activation]\012 * @param inputFeatureMap  [input feature map]\012 * @param outputFeatureMap [output feature map (won't use if in FPGA optimized\012 * setting)]\012 * @param param            [network parameter]\012 * @param phase            [phase id, for ping pong buffer switching]\012 */\012// I think I could safely skip this.\012__kernel void reluLayer(__global dType *inputFeatureMap,\012                        __global dType *outputFeatureMap,\012                        __global NetParam *param, __global BOOL *phase) {\012  DEBUG_PRINT_INFO(\"reluLayer\");\012  WORK_ITEM_BEGIN(reluCounter, param->inputTotalDataNum, GLOBAL_ID)\012  writeFmBuffer[reluCounter] = RELU(readFmBuffer[reluCounter]);\012  WORK_ITEM_END(reluCounter, GLOBAL_SIZE)\012  DEBUG_DUMP_DATA_TO_CPU;\012}\012\012/**\012 * [convLayer conv layer, process all data in inputFeatureMap or inner cache]\012 * @param inputFeatureMap  [input feature map]\012 * @param outputFeatureMap [output feature map (won't use if in FPGA optimized\012 * setting)]\012 * @param weight           [weight memory]\012 * @param bias             [bias memory]\012 * @param param            [network parameter]\012 * @param phase            [phase id, for ping pong buffer switching]\012 */\012__kernel void convLayer(__global dType *inputFeatureMap,\012                        __global dType *outputFeatureMap,\012                        __global dType *weight, __global dType *bias,\012                        __global const NetParam *param, __global BOOL *phase) {\012  DEBUG_PRINT_INFO(\"convLayer\");\012  __private int dilatedKernelSize =\012      (param->kernelSize - 1) * param->dilation + 1;\012  __private dType result;\012  EASY_WORK_ITEM_3D_OUTPUT_BEGIN(channelCounter, heightCounter, widthCounter);\012  result = 0;\012  for (int c = 0; c < param->inputChannel; c++)\012    for (int i = 0; i < param->kernelSize; i++)\012      for (int j = 0; j < param->kernelSize; j++) {\012        result += (ELM(readFmBuffer, c, param->inputHeight,\012                       heightCounter * param->stride + i * param->dilation,\012                       param->inputWidth,\012                       widthCounter * param->stride + j * param->dilation) *\012                   WELM(weight, channelCounter, param->inputChannel, c,\012                        param->kernelSize, i, j));\012      }\012\012  result += bias[channelCounter];\012  OUTPUT_ELM = result;\012  EASY_WORK_ITEM_3D_OUTPUT_END(channelCounter, heightCounter, widthCounter);\012  DEBUG_DUMP_DATA_TO_CPU;\012}\012\012/**\012 * [output layer\012 *  layer to copy data from (input|cache) to output]\012 * @param inputFeatureMap  [input feature map]\012 * @param outputFeatureMap [output feature map (won't use if in FPGA optimized\012 * setting)]\012 * @param param            [network parameter]\012 * @param phase            [phase id, for ping pong buffer switching]\012 */\012// safely skip\012__kernel void outputLayer(__global dType *inputFeatureMap,\012                          __global dType *outputFeatureMap,\012                          __global NetParam *param, __global BOOL *phase) {\012  DEBUG_PRINT_INFO(\"outputLayer\");\012  LOAD_DATA(readFmBuffer, outputFeatureMap, param->inputTotalDataNum, GLOBAL_ID,\012            GLOBAL_SIZE);\012}\012"}];
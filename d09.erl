-module(d09).
-export([run/0]).

run() ->
    Input = [{l,2}, {d,2}, {u,1}, {r,1}, {u,2}, {d,1}, {l,1}, {d,1}, {r,2}, {d,2}, {u,1}, {r,2}, {u,2}, {r,2}, {u,2}, {l,2}, {u,2}, {l,2}, {u,1}, {d,1}, {l,1}, {r,1}, {u,2}, {r,2}, {d,1}, {u,2}, {l,1}, {u,2}, {l,2}, {d,2}, {r,1}, {u,2}, {r,2}, {u,1}, {d,1}, {l,1}, {u,2}, {l,2}, {d,1}, {u,1}, {r,2}, {d,2}, {r,1}, {d,1}, {l,1}, {r,2}, {u,1}, {l,1}, {d,2}, {u,2}, {d,1}, {l,1}, {r,1}, {u,1}, {d,1}, {r,2}, {d,2}, {r,1}, {d,2}, {l,1}, {d,2}, {l,1}, {u,2}, {r,1}, {l,1}, {u,2}, {l,2}, {d,2}, {r,2}, {l,1}, {u,2}, {r,1}, {u,2}, {r,2}, {l,2}, {d,2}, {r,1}, {l,1}, {d,1}, {l,1}, {u,2}, {l,2}, {d,2}, {l,2}, {u,1}, {r,2}, {u,1}, {r,2}, {d,2}, {u,1}, {r,1}, {u,2}, {r,2}, {l,1}, {u,2}, {l,1}, {u,2}, {l,1}, {u,1}, {r,2}, {u,2}, {l,1}, {d,2}, {u,1}, {l,2}, {u,2}, {d,2}, {u,1}, {d,1}, {r,1}, {d,2}, {u,2}, {r,2}, {l,2}, {r,2}, {u,1}, {l,2}, {r,3}, {d,2}, {l,1}, {r,1}, {d,3}, {u,3}, {r,2}, {l,3}, {u,1}, {l,3}, {u,2}, {l,2}, {u,3}, {d,2}, {r,1}, {u,1}, {r,3}, {u,2}, {d,2}, {u,3}, {d,3}, {l,2}, {u,2}, {l,3}, {u,1}, {r,1}, {d,3}, {l,1}, {r,2}, {u,1}, {l,2}, {d,1}, {u,2}, {l,2}, {u,1}, {d,1}, {u,1}, {r,3}, {u,3}, {r,2}, {u,1}, {d,1}, {u,2}, {d,1}, {r,1}, {u,3}, {r,1}, {u,3}, {r,1}, {u,2}, {d,1}, {l,1}, {d,1}, {l,1}, {d,1}, {u,1}, {l,2}, {r,2}, {u,2}, {l,3}, {u,1}, {d,1}, {r,3}, {u,1}, {l,2}, {r,1}, {d,1}, {r,3}, {d,2}, {u,2}, {d,1}, {r,1}, {u,1}, {d,1}, {u,1}, {d,3}, {u,1}, {l,3}, {d,1}, {r,2}, {u,2}, {r,2}, {u,1}, {r,2}, {d,2}, {l,3}, {u,1}, {d,1}, {l,3}, {u,3}, {r,1}, {u,3}, {d,3}, {l,3}, {d,3}, {l,2}, {r,2}, {u,2}, {r,1}, {u,2}, {d,2}, {u,2}, {l,2}, {r,1}, {u,3}, {r,4}, {l,2}, {r,4}, {d,2}, {r,2}, {l,2}, {r,2}, {d,1}, {u,2}, {d,3}, {r,1}, {u,1}, {d,4}, {r,4}, {l,1}, {u,1}, {d,2}, {l,2}, {r,3}, {u,2}, {l,3}, {r,4}, {u,3}, {l,3}, {d,4}, {r,3}, {l,2}, {u,3}, {d,1}, {l,2}, {u,3}, {l,1}, {d,2}, {r,1}, {d,4}, {l,2}, {r,4}, {u,4}, {l,2}, {r,2}, {d,4}, {l,3}, {u,3}, {l,2}, {u,2}, {l,4}, {d,2}, {r,4}, {d,1}, {l,4}, {u,4}, {r,1}, {u,4}, {d,2}, {r,2}, {u,3}, {l,1}, {r,4}, {u,3}, {r,3}, {u,4}, {l,2}, {d,3}, {l,4}, {r,2}, {l,4}, {d,4}, {u,1}, {l,2}, {d,4}, {r,1}, {u,3}, {r,1}, {u,4}, {l,1}, {d,4}, {u,2}, {l,4}, {u,1}, {r,2}, {u,4}, {l,2}, {d,3}, {l,2}, {u,4}, {d,2}, {l,3}, {d,1}, {u,4}, {d,1}, {l,4}, {u,3}, {r,3}, {l,2}, {r,2}, {u,2}, {d,2}, {l,1}, {u,4}, {r,2}, {l,3}, {r,1}, {u,4}, {l,2}, {u,4}, {l,2}, {u,3}, {l,2}, {r,3}, {u,3}, {l,2}, {d,4}, {r,3}, {u,2}, {l,3}, {d,3}, {r,4}, {u,1}, {r,3}, {d,5}, {u,1}, {l,1}, {r,5}, {d,2}, {l,3}, {u,5}, {d,3}, {l,3}, {d,1}, {u,3}, {r,2}, {u,5}, {l,2}, {d,2}, {l,5}, {u,2}, {d,5}, {r,1}, {u,1}, {r,5}, {l,4}, {d,4}, {r,2}, {u,5}, {d,5}, {l,1}, {r,2}, {u,4}, {l,2}, {d,1}, {l,5}, {d,1}, {r,3}, {l,2}, {r,4}, {d,1}, {r,4}, {u,4}, {l,1}, {u,2}, {d,5}, {u,4}, {l,3}, {d,3}, {r,3}, {d,5}, {l,2}, {u,5}, {r,3}, {l,5}, {r,4}, {u,4}, {r,3}, {l,2}, {d,4}, {l,2}, {u,1}, {r,3}, {l,2}, {r,3}, {l,5}, {u,1}, {l,2}, {r,1}, {d,3}, {r,4}, {l,2}, {d,2}, {r,4}, {d,3}, {l,5}, {d,2}, {l,4}, {r,3}, {l,3}, {d,2}, {r,5}, {u,4}, {r,4}, {u,3}, {l,4}, {u,1}, {r,4}, {d,4}, {u,1}, {l,3}, {u,1}, {l,1}, {r,4}, {d,1}, {u,3}, {d,2}, {r,3}, {l,3}, {u,2}, {r,4}, {d,4}, {l,1}, {r,5}, {u,1}, {l,2}, {u,2}, {r,4}, {u,4}, {r,2}, {d,2}, {u,3}, {l,5}, {d,4}, {l,5}, {d,1}, {l,2}, {d,4}, {r,6}, {l,3}, {d,5}, {r,3}, {l,5}, {r,5}, {d,1}, {r,3}, {l,5}, {r,5}, {l,6}, {r,4}, {l,2}, {r,5}, {d,3}, {u,1}, {r,4}, {d,2}, {r,2}, {l,6}, {u,2}, {r,5}, {u,5}, {l,3}, {r,6}, {l,6}, {d,3}, {l,1}, {r,1}, {l,1}, {d,5}, {l,4}, {u,3}, {d,5}, {l,1}, {u,6}, {r,5}, {d,6}, {u,1}, {d,5}, {l,3}, {d,5}, {r,6}, {u,2}, {d,1}, {l,4}, {d,5}, {r,2}, {u,5}, {r,4}, {l,1}, {r,2}, {l,1}, {r,2}, {l,6}, {u,2}, {d,3}, {r,5}, {d,3}, {l,4}, {r,4}, {d,1}, {r,6}, {d,1}, {r,4}, {l,3}, {d,6}, {l,5}, {d,2}, {r,1}, {l,3}, {r,2}, {l,6}, {d,4}, {u,5}, {r,6}, {u,3}, {d,2}, {r,4}, {l,6}, {u,4}, {l,2}, {u,2}, {l,1}, {u,5}, {d,1}, {l,2}, {u,1}, {d,2}, {l,1}, {r,4}, {u,4}, {l,4}, {d,4}, {r,3}, {d,6}, {l,2}, {u,4}, {r,1}, {l,2}, {u,3}, {l,6}, {u,6}, {r,3}, {d,7}, {u,4}, {r,6}, {l,6}, {d,7}, {l,5}, {u,1}, {r,2}, {u,7}, {d,5}, {l,7}, {r,2}, {u,3}, {r,7}, {d,5}, {l,2}, {u,2}, {r,3}, {u,5}, {r,3}, {d,4}, {r,4}, {u,3}, {l,6}, {r,2}, {d,7}, {u,6}, {d,1}, {u,3}, {r,3}, {d,4}, {r,6}, {u,4}, {l,3}, {d,3}, {r,4}, {l,2}, {d,1}, {r,3}, {u,6}, {r,5}, {u,3}, {l,5}, {r,5}, {d,4}, {u,3}, {l,7}, {u,7}, {d,3}, {u,1}, {d,1}, {u,1}, {d,3}, {l,5}, {r,4}, {u,6}, {r,7}, {d,2}, {l,3}, {r,2}, {u,3}, {d,2}, {l,5}, {d,7}, {r,6}, {d,1}, {u,5}, {d,7}, {u,6}, {d,4}, {l,6}, {d,4}, {l,2}, {d,7}, {r,6}, {l,3}, {d,2}, {l,3}, {d,2}, {u,6}, {l,1}, {r,2}, {u,5}, {l,5}, {r,2}, {u,6}, {r,3}, {l,7}, {r,4}, {d,7}, {l,7}, {d,6}, {l,4}, {d,2}, {r,6}, {l,1}, {d,3}, {u,6}, {d,7}, {u,1}, {l,5}, {d,7}, {u,3}, {r,3}, {l,7}, {d,2}, {l,7}, {u,5}, {d,4}, {r,3}, {d,8}, {r,7}, {u,1}, {r,8}, {u,4}, {d,5}, {r,6}, {l,5}, {d,5}, {l,7}, {r,7}, {u,4}, {d,2}, {l,7}, {u,8}, {d,6}, {l,5}, {d,2}, {l,6}, {u,6}, {r,5}, {u,5}, {l,6}, {u,5}, {l,3}, {u,4}, {d,7}, {r,3}, {l,4}, {r,7}, {d,1}, {r,5}, {d,2}, {r,8}, {l,8}, {u,8}, {l,6}, {u,5}, {l,1}, {u,6}, {r,2}, {u,4}, {l,5}, {r,2}, {d,8}, {l,1}, {u,4}, {r,6}, {u,1}, {l,4}, {r,7}, {l,8}, {r,5}, {u,5}, {r,3}, {l,3}, {u,2}, {d,8}, {l,8}, {r,4}, {u,3}, {d,3}, {l,1}, {r,8}, {u,3}, {l,8}, {d,8}, {u,7}, {d,8}, {l,3}, {u,5}, {d,7}, {l,7}, {u,5}, {l,3}, {r,6}, {d,7}, {r,1}, {d,7}, {l,5}, {u,3}, {d,5}, {u,1}, {l,2}, {d,4}, {u,5}, {r,1}, {l,6}, {u,3}, {l,1}, {d,6}, {r,1}, {l,1}, {r,3}, {l,4}, {u,6}, {r,3}, {u,8}, {l,2}, {u,3}, {r,1}, {d,5}, {r,2}, {u,2}, {d,8}, {l,3}, {d,2}, {r,8}, {d,1}, {l,3}, {u,1}, {d,8}, {u,1}, {l,2}, {d,4}, {r,3}, {l,4}, {d,3}, {l,2}, {d,4}, {l,6}, {u,6}, {d,9}, {u,5}, {r,9}, {d,1}, {r,8}, {l,9}, {r,7}, {d,5}, {u,1}, {l,1}, {r,8}, {u,3}, {r,4}, {l,2}, {r,1}, {d,6}, {u,5}, {d,6}, {l,9}, {r,2}, {d,2}, {r,8}, {d,2}, {r,3}, {u,1}, {l,1}, {u,1}, {l,1}, {u,3}, {d,9}, {r,2}, {u,1}, {d,1}, {r,6}, {d,7}, {l,9}, {u,4}, {l,7}, {u,8}, {d,8}, {l,3}, {d,9}, {l,4}, {d,8}, {u,9}, {l,9}, {d,7}, {u,7}, {d,2}, {l,4}, {d,5}, {l,5}, {u,6}, {d,8}, {l,5}, {u,9}, {l,4}, {u,3}, {d,4}, {r,9}, {u,4}, {d,7}, {l,6}, {r,7}, {l,5}, {u,5}, {l,8}, {d,3}, {l,5}, {u,7}, {d,6}, {u,3}, {r,1}, {d,8}, {u,3}, {l,8}, {u,9}, {r,1}, {u,1}, {l,3}, {r,6}, {u,5}, {r,7}, {u,4}, {r,4}, {l,8}, {u,4}, {l,9}, {r,7}, {d,6}, {r,8}, {u,9}, {d,8}, {l,3}, {r,7}, {u,1}, {l,9}, {r,2}, {l,3}, {d,6}, {r,9}, {d,1}, {l,3}, {d,4}, {u,2}, {d,9}, {r,9}, {u,3}, {r,2}, {d,3}, {u,7}, {l,4}, {d,6}, {r,3}, {d,8}, {u,4}, {r,8}, {u,6}, {r,5}, {l,5}, {u,2}, {d,1}, {r,5}, {u,9}, {d,3}, {l,5}, {r,8}, {u,2}, {d,9}, {r,5}, {u,4}, {l,7}, {u,4}, {d,6}, {u,7}, {d,1}, {l,6}, {u,7}, {d,6}, {l,3}, {d,8}, {u,1}, {l,1}, {u,9}, {l,2}, {u,4}, {d,2}, {r,8}, {u,3}, {r,8}, {l,4}, {u,3}, {l,7}, {u,7}, {d,7}, {r,7}, {l,2}, {u,6}, {r,1}, {u,7}, {d,6}, {l,1}, {r,5}, {l,7}, {r,1}, {d,7}, {u,9}, {d,9}, {l,1}, {d,10}, {u,10}, {l,2}, {r,9}, {l,1}, {r,3}, {u,8}, {l,1}, {r,2}, {l,2}, {u,2}, {d,1}, {u,5}, {r,5}, {d,7}, {l,6}, {d,2}, {l,10}, {u,10}, {d,4}, {l,10}, {r,10}, {u,5}, {l,7}, {r,10}, {d,1}, {l,8}, {d,3}, {u,7}, {r,2}, {d,7}, {u,4}, {l,3}, {r,4}, {l,10}, {u,3}, {l,5}, {r,4}, {d,3}, {r,9}, {l,9}, {r,6}, {u,5}, {l,5}, {r,11}, {u,6}, {l,11}, {r,9}, {d,5}, {u,7}, {l,8}, {r,5}, {u,11}, {d,6}, {l,9}, {d,5}, {l,2}, {d,2}, {r,4}, {l,1}, {d,10}, {l,9}, {r,6}, {d,2}, {l,11}, {d,4}, {r,5}, {d,2}, {r,8}, {d,3}, {l,1}, {r,11}, {d,1}, {l,11}, {d,7}, {l,5}, {u,7}, {d,4}, {l,7}, {u,11}, {l,3}, {u,7}, {l,2}, {d,6}, {r,1}, {d,3}, {r,1}, {l,1}, {d,11}, {l,6}, {u,1}, {r,9}, {u,8}, {d,8}, {l,2}, {r,6}, {u,10}, {r,7}, {l,5}, {u,1}, {r,4}, {l,2}, {d,11}, {l,10}, {u,7}, {l,10}, {d,1}, {r,6}, {u,2}, {d,7}, {r,7}, {d,2}, {r,10}, {u,8}, {d,5}, {u,2}, {l,11}, {r,9}, {d,7}, {u,3}, {r,6}, {u,6}, {d,7}, {u,6}, {l,2}, {r,11}, {l,10}, {d,7}, {u,10}, {d,3}, {r,10}, {l,4}, {d,8}, {r,5}, {l,5}, {d,9}, {u,8}, {r,3}, {d,10}, {r,11}, {u,5}, {d,11}, {l,2}, {d,8}, {l,7}, {u,4}, {d,5}, {u,9}, {d,3}, {u,11}, {d,4}, {l,1}, {u,4}, {l,3}, {r,7}, {l,12}, {d,10}, {u,8}, {l,6}, {d,11}, {u,5}, {l,2}, {d,6}, {l,5}, {u,8}, {l,4}, {u,6}, {r,9}, {d,2}, {l,6}, {u,12}, {r,2}, {l,10}, {r,7}, {u,7}, {l,5}, {r,6}, {u,5}, {r,7}, {d,6}, {r,4}, {u,6}, {l,4}, {u,4}, {l,4}, {u,3}, {d,3}, {l,9}, {d,12}, {r,10}, {u,3}, {l,1}, {u,4}, {l,8}, {r,4}, {d,6}, {l,2}, {d,7}, {l,9}, {u,3}, {l,11}, {r,9}, {d,8}, {l,1}, {d,11}, {r,8}, {l,6}, {u,7}, {r,5}, {u,3}, {d,4}, {r,4}, {u,5}, {l,6}, {u,10}, {d,2}, {r,8}, {u,7}, {d,4}, {l,11}, {r,9}, {u,9}, {d,12}, {u,8}, {r,4}, {u,5}, {d,11}, {l,5}, {r,5}, {d,2}, {l,12}, {u,4}, {l,1}, {r,9}, {l,5}, {d,1}, {r,2}, {l,2}, {d,7}, {l,12}, {d,2}, {r,7}, {u,10}, {l,1}, {u,2}, {l,8}, {d,5}, {l,7}, {u,8}, {l,8}, {u,10}, {d,7}, {r,8}, {d,7}, {r,9}, {l,7}, {d,1}, {r,3}, {d,4}, {r,11}, {d,3}, {l,5}, {d,7}, {u,8}, {l,2}, {d,10}, {l,12}, {r,7}, {u,13}, {r,4}, {u,10}, {l,10}, {d,6}, {u,7}, {d,12}, {u,2}, {d,8}, {l,1}, {r,5}, {d,9}, {l,1}, {r,11}, {l,2}, {d,7}, {l,13}, {u,1}, {l,8}, {d,2}, {u,12}, {l,6}, {r,10}, {l,10}, {r,9}, {u,3}, {r,1}, {l,10}, {d,2}, {l,4}, {d,8}, {u,7}, {l,11}, {d,8}, {u,1}, {d,1}, {l,2}, {d,2}, {l,5}, {u,6}, {d,1}, {u,6}, {r,2}, {l,2}, {d,5}, {u,2}, {r,10}, {l,4}, {d,3}, {l,11}, {d,11}, {u,4}, {d,4}, {r,12}, {d,11}, {u,2}, {r,11}, {u,3}, {r,8}, {u,8}, {l,5}, {r,12}, {u,1}, {l,10}, {r,11}, {l,3}, {u,6}, {d,2}, {r,7}, {d,13}, {l,11}, {r,8}, {l,8}, {r,1}, {l,5}, {d,13}, {r,8}, {l,12}, {d,13}, {r,10}, {u,5}, {d,13}, {u,6}, {l,2}, {d,2}, {u,7}, {d,4}, {l,4}, {r,5}, {l,12}, {u,6}, {d,8}, {u,7}, {d,12}, {r,11}, {l,11}, {d,9}, {r,4}, {d,3}, {l,5}, {r,6}, {d,9}, {r,3}, {u,10}, {r,10}, {u,3}, {d,11}, {l,3}, {d,5}, {r,14}, {u,7}, {r,3}, {d,1}, {l,4}, {u,6}, {d,6}, {r,10}, {l,12}, {r,10}, {l,4}, {u,10}, {r,8}, {d,14}, {l,6}, {u,7}, {d,4}, {l,9}, {r,10}, {d,10}, {l,4}, {r,6}, {u,8}, {d,10}, {l,12}, {u,11}, {l,7}, {r,1}, {u,1}, {r,12}, {u,7}, {d,3}, {u,4}, {r,3}, {d,6}, {u,2}, {r,2}, {u,14}, {d,10}, {r,5}, {l,12}, {u,5}, {d,6}, {r,7}, {l,13}, {d,11}, {r,6}, {d,11}, {r,6}, {d,6}, {u,10}, {l,14}, {d,4}, {r,14}, {d,7}, {u,12}, {l,3}, {u,2}, {d,3}, {r,1}, {d,3}, {u,2}, {d,13}, {l,14}, {r,13}, {u,3}, {d,12}, {l,14}, {u,12}, {d,6}, {r,2}, {u,6}, {l,11}, {d,3}, {l,7}, {d,7}, {r,11}, {d,11}, {r,10}, {l,2}, {u,12}, {l,14}, {u,11}, {r,12}, {l,4}, {d,2}, {r,13}, {l,1}, {u,7}, {l,2}, {d,7}, {l,14}, {r,11}, {u,1}, {l,7}, {u,11}, {l,6}, {u,1}, {d,11}, {l,14}, {r,4}, {l,1}, {d,14}, {u,7}, {l,6}, {r,3}, {l,2}, {u,10}, {d,3}, {r,4}, {u,7}, {r,11}, {u,7}, {r,13}, {u,2}, {l,12}, {r,9}, {l,15}, {r,4}, {u,5}, {d,7}, {l,10}, {r,9}, {d,5}, {l,14}, {u,9}, {r,3}, {l,15}, {r,5}, {l,10}, {d,5}, {u,3}, {d,9}, {u,13}, {d,15}, {r,10}, {l,9}, {r,9}, {u,4}, {d,2}, {l,3}, {r,5}, {l,11}, {r,7}, {l,15}, {d,12}, {l,13}, {d,4}, {r,2}, {u,14}, {d,9}, {l,1}, {d,1}, {l,6}, {u,9}, {d,14}, {u,2}, {l,1}, {r,10}, {u,14}, {r,4}, {d,11}, {r,6}, {d,11}, {u,9}, {r,2}, {l,6}, {r,10}, {l,4}, {d,7}, {r,11}, {u,5}, {l,2}, {d,5}, {u,6}, {r,8}, {u,4}, {r,9}, {d,15}, {r,8}, {l,10}, {u,5}, {l,4}, {u,7}, {l,3}, {u,5}, {r,2}, {u,13}, {l,9}, {u,4}, {d,13}, {r,1}, {d,15}, {u,4}, {l,7}, {d,12}, {l,8}, {u,6}, {l,10}, {u,13}, {r,12}, {d,13}, {u,6}, {d,13}, {u,2}, {l,13}, {u,7}, {l,8}, {u,6}, {d,2}, {u,13}, {l,2}, {d,13}, {r,3}, {d,2}, {l,11}, {d,13}, {u,1}, {d,12}, {l,9}, {u,2}, {r,9}, {u,16}, {d,6}, {l,16}, {d,15}, {r,7}, {u,3}, {d,11}, {l,8}, {u,3}, {l,15}, {r,7}, {d,14}, {l,8}, {r,7}, {u,12}, {r,11}, {u,2}, {r,13}, {d,9}, {l,4}, {u,14}, {l,6}, {d,7}, {l,10}, {u,14}, {d,8}, {l,6}, {d,3}, {l,6}, {d,12}, {u,13}, {r,9}, {l,6}, {u,9}, {r,9}, {d,13}, {r,13}, {u,13}, {l,4}, {d,1}, {r,8}, {l,1}, {r,15}, {u,15}, {r,14}, {d,9}, {l,5}, {d,2}, {l,14}, {u,14}, {l,15}, {r,10}, {u,11}, {l,7}, {r,12}, {u,7}, {l,7}, {d,9}, {u,1}, {l,11}, {r,11}, {d,13}, {u,7}, {r,7}, {u,7}, {r,8}, {d,12}, {u,11}, {d,14}, {u,16}, {l,5}, {r,8}, {d,2}, {l,10}, {d,14}, {r,16}, {d,13}, {u,14}, {l,6}, {r,11}, {d,4}, {r,15}, {d,2}, {r,3}, {l,2}, {u,8}, {l,4}, {d,5}, {u,3}, {l,11}, {u,7}, {r,14}, {u,4}, {l,5}, {d,10}, {u,16}, {l,1}, {u,5}, {r,11}, {d,16}, {u,5}, {d,11}, {r,5}, {d,9}, {r,3}, {u,13}, {d,6}, {l,10}, {d,2}, {u,4}, {d,7}, {u,1}, {r,10}, {d,6}, {u,12}, {l,2}, {d,8}, {u,5}, {l,5}, {u,7}, {l,3}, {u,16}, {d,12}, {l,12}, {r,16}, {l,5}, {r,17}, {l,7}, {u,17}, {d,15}, {r,14}, {l,7}, {u,16}, {r,7}, {d,7}, {r,14}, {d,6}, {l,7}, {u,6}, {r,5}, {d,14}, {l,8}, {r,3}, {l,1}, {u,12}, {l,8}, {d,11}, {r,3}, {d,11}, {l,16}, {r,4}, {u,2}, {r,17}, {u,10}, {r,3}, {u,13}, {r,6}, {d,16}, {u,15}, {r,3}, {u,7}, {d,6}, {u,2}, {l,12}, {d,11}, {l,6}, {d,9}, {r,7}, {u,10}, {r,14}, {d,10}, {r,10}, {d,17}, {r,9}, {l,11}, {r,7}, {d,14}, {l,10}, {u,17}, {r,5}, {d,12}, {u,11}, {d,11}, {r,7}, {d,12}, {u,10}, {d,10}, {u,8}, {d,11}, {r,8}, {u,9}, {l,17}, {d,15}, {r,2}, {d,14}, {l,10}, {u,2}, {l,9}, {r,15}, {l,8}, {d,9}, {l,7}, {r,10}, {d,6}, {l,15}, {u,1}, {l,11}, {r,14}, {l,7}, {r,17}, {u,17}, {l,8}, {u,16}, {d,4}, {r,9}, {l,13}, {r,5}, {l,1}, {d,14}, {u,7}, {l,8}, {r,10}, {u,10}, {d,16}, {u,6}, {r,13}, {d,12}, {u,10}, {l,3}, {u,2}, {r,7}, {d,12}, {r,16}, {d,1}, {l,14}, {r,9}, {d,18}, {r,1}, {l,17}, {r,9}, {u,16}, {l,5}, {u,12}, {r,7}, {d,6}, {l,17}, {u,3}, {r,5}, {u,13}, {d,9}, {u,12}, {l,13}, {d,5}, {r,1}, {u,7}, {l,4}, {r,13}, {d,1}, {l,15}, {u,11}, {l,5}, {d,2}, {r,12}, {d,12}, {u,5}, {l,1}, {r,5}, {u,3}, {r,5}, {l,9}, {r,15}, {u,3}, {d,18}, {l,10}, {r,2}, {d,7}, {r,13}, {l,8}, {r,5}, {l,2}, {r,15}, {d,12}, {l,14}, {u,15}, {l,8}, {u,13}, {r,13}, {l,15}, {r,16}, {d,10}, {l,15}, {u,1}, {r,1}, {d,3}, {u,17}, {d,2}, {l,5}, {r,17}, {u,6}, {r,10}, {l,3}, {d,11}, {r,13}, {d,5}, {u,3}, {d,9}, {u,10}, {r,12}, {d,10}, {r,15}, {u,11}, {l,6}, {r,3}, {u,4}, {d,7}, {r,12}, {l,5}, {r,7}, {d,17}, {l,14}, {u,9}, {d,7}, {u,2}, {r,1}, {d,13}, {r,3}, {d,12}, {l,3}, {u,17}, {d,1}, {u,6}, {l,8}, {u,17}, {d,1}, {r,6}, {l,8}, {r,8}, {u,5}, {l,12}, {d,8}, {r,5}, {l,11}, {u,17}, {l,3}, {u,11}, {l,1}, {r,15}, {d,15}, {l,10}, {d,10}, {l,19}, {r,11}, {l,4}, {d,11}, {l,13}, {u,4}, {d,6}, {l,3}, {u,11}, {r,3}, {l,9}, {d,4}, {u,10}, {l,14}, {d,10}, {r,11}, {l,1}, {r,1}, {d,8}, {r,19}, {d,6}, {l,16}, {d,1}, {u,13}, {r,19}, {u,19}, {d,3}, {r,8}, {d,16}, {r,2}, {d,2}, {l,19}, {d,7}, {r,2}, {u,4}, {l,5}, {r,2}, {u,9}, {l,5}, {d,13}, {l,5}, {r,14}, {l,13}, {d,5}, {u,10}, {r,12}, {l,11}, {d,18}, {u,7}, {l,12}, {r,11}, {d,16}, {u,15}, {l,12}, {r,12}, {d,1}, {r,2}, {d,6}, {l,15}, {d,8}, {r,19}, {u,9}, {r,12}, {l,10}, {r,3}, {d,19}, {r,15}, {u,12}, {r,6}, {l,3}, {d,17}, {r,2}, {u,11}, {d,12}, {l,15}, {d,16}, {r,18}, {d,16}, {u,12}, {r,16}, {u,17}, {r,15}, {l,10}, {r,4}, {d,12}, {l,5}, {r,11}, {l,1}, {u,11}, {r,3}, {d,5}],
    % part 1
    Init2 = init(2, {16, 12}),
    TailLog2 = move(Init2, Input, []),
    UniqueEntries2 = sets:to_list(sets:from_list(TailLog2)),
    io:fwrite("~w~n", [length(UniqueEntries2)]),
    % part 2
    Init10 = init(10, {16, 12}),
    TailLog10 = move(Init10, Input, []),
    UniqueEntries10 = sets:to_list(sets:from_list(TailLog10)),
    io:fwrite("~w~n", [length(UniqueEntries10)]).

init(N, Coord) ->
    [ Coord || _ <- lists:seq(1, N) ].

move(_Snek, [], Log) ->
    Log;
move(Snek, [M | InputTail], Log) ->
    {NewSnek, TailLog} = process(Snek, M, []),
    move(NewSnek, InputTail, Log ++ TailLog).

process(Snek, {_, 0}, Log) ->
    {Snek, Log};
process([{HX, HY} | SnekTail] = _Snek, {Dir, Count}, Log) ->
    NewHPos = case Dir of
        l -> {HX - 1, HY};
        r -> {HX + 1, HY};
        u -> {HX, HY - 1};
        d -> {HX, HY + 1}
    end,
    % NewTPos = follow(NewHPos, TPos),
    NewSnek = [NewHPos | follow([NewHPos | SnekTail], [])],
    process(NewSnek, {Dir, Count - 1}, Log ++ [lists:last(NewSnek)]).

follow([_], NewSnek) ->
    NewSnek;
follow([Head , Follower | Tail], NewSnek) ->
    NewF = follow(Head, Follower, distance(Head, Follower)),
    follow([NewF | Tail], NewSnek ++ [NewF]).

follow(_HPos, TPos, {DeltaX, DeltaY})
    when DeltaX =< 1, DeltaX >= -1, DeltaY =< 1, DeltaY >= -1
->
    TPos;
follow(HPos, {TX, TY}, {DeltaX, DeltaY}) ->
    NewTPos = {TX + offset(DeltaX), TY + offset(DeltaY)},
    follow(HPos, NewTPos, distance(HPos, NewTPos)).

distance({HX, HY}, {TX, TY}) -> {HX - TX, HY - TY}.

offset(0)            -> 0;
offset(D) when D < 0 -> -1;
offset(_D)           -> 1.

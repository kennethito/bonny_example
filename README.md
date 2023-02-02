# BonnyExample

Just an error repro, nothing to see here.

Steps to get to this state
1. mix new bonny_example --sup
2. Set .tool-versions
3. mix deps.get
4. mix bonny.init
5. Fix [mix.exs application mod] and [application.ex get vs get!]
6. mix test

Results in the following error.
```
** (Mix) Could not start application bonny_example: BonnyExample.Application.start(:normal, [env: :test]) returned an error: shutdown: failed to start child: BonnyExample.Operator
    ** (EXIT) shutdown: failed to start child: %K8s.Operation{api_version: "bonny-example.test.com/v1", data: nil, method: :get, name: "BonnyExample", path_params: [namespace: "default"], query_params: [], verb: :list}
        ** (EXIT) exited in: GenServer.call(K8s.Client.DynamicHTTPProvider, {:locate, #PID<0.352.0>}, 5000)
            ** (EXIT) no process: the process is not alive or there's no process currently associated with the given name, possibly because its application isn't started
```

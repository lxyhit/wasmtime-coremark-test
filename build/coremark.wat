(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func))
  (type (;5;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32 i32)))
  (type (;8;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;9;) (func (param i32 i32 i32)))
  (type (;10;) (func (param i32 i32 i32 i32)))
  (type (;11;) (func (result i32)))
  (type (;12;) (func (result i64)))
  (type (;13;) (func (param i64) (result f64)))
  (import "env" "memory" (memory (;0;) 10))
  (import "env" "__indirect_function_table" (table (;0;) 0 funcref))
  (import "env" "__stack_pointer" (global $__stack_pointer (mut i32)))
  (import "env" "__memory_base" (global $__memory_base i32))
  (import "env" "__table_base" (global $__table_base i32))
  (import "env" "printf" (func $printf (type 1)))
  (import "env" "puts" (func $puts (type 2)))
  (import "env" "putchar" (func $putchar (type 2)))
  (import "env" "malloc" (func $malloc (type 2)))
  (import "env" "free" (func $free (type 3)))
  (import "env" "clock_gettime" (func $clock_gettime (type 1)))
  (import "env" "__wasi_args_sizes_get" (func $__wasi_args_sizes_get (type 1)))
  (import "env" "_Exit" (func $_Exit (type 3)))
  (import "env" "calloc" (func $calloc (type 1)))
  (import "env" "__wasi_args_get" (func $__wasi_args_get (type 1)))
  (import "env" "__wasm_call_dtors" (func $__wasm_call_dtors (type 4)))
  (import "env" "memset" (func $memset (type 0)))
  (import "GOT.mem" "_CLOCK_REALTIME" (global $_CLOCK_REALTIME (mut i32)))
  (import "GOT.mem" "default_num_contexts" (global $default_num_contexts (mut i32)))
  (func $__wasm_call_ctors (type 4))
  (func $__wasm_apply_data_relocs (type 4)
    i32.const 1360
    global.get $__memory_base
    i32.add
    global.get $__memory_base
    i32.const 141
    i32.add
    i32.store
    i32.const 1364
    global.get $__memory_base
    i32.add
    global.get $__memory_base
    i32.const 113
    i32.add
    i32.store
    i32.const 1368
    global.get $__memory_base
    i32.add
    global.get $__memory_base
    i32.const 108
    i32.add
    i32.store
    i32.const 1372
    global.get $__memory_base
    i32.add
    global.get $__memory_base
    i32.const 136
    i32.add
    i32.store
    i32.const 1376
    global.get $__memory_base
    i32.add
    global.get $__memory_base
    i32.const 191
    i32.add
    i32.store
    i32.const 1380
    global.get $__memory_base
    i32.add
    global.get $__memory_base
    i32.const 173
    i32.add
    i32.store
    i32.const 1384
    global.get $__memory_base
    i32.add
    global.get $__memory_base
    i32.const 164
    i32.add
    i32.store
    i32.const 1388
    global.get $__memory_base
    i32.add
    global.get $__memory_base
    i32.const 182
    i32.add
    i32.store
    i32.const 1392
    global.get $__memory_base
    i32.add
    global.get $__memory_base
    i32.const 118
    i32.add
    i32.store
    i32.const 1396
    global.get $__memory_base
    i32.add
    global.get $__memory_base
    i32.const 155
    i32.add
    i32.store
    i32.const 1400
    global.get $__memory_base
    i32.add
    global.get $__memory_base
    i32.const 127
    i32.add
    i32.store
    i32.const 1404
    global.get $__memory_base
    i32.add
    global.get $__memory_base
    i32.const 146
    i32.add
    i32.store
    i32.const 1408
    global.get $__memory_base
    i32.add
    global.get $__memory_base
    i32.const 99
    i32.add
    i32.store
    i32.const 1412
    global.get $__memory_base
    i32.add
    global.get $__memory_base
    i32.const 47
    i32.add
    i32.store
    i32.const 1416
    global.get $__memory_base
    i32.add
    global.get $__memory_base
    i32.const 0
    i32.add
    i32.store
    i32.const 1420
    global.get $__memory_base
    i32.add
    global.get $__memory_base
    i32.const 90
    i32.add
    i32.store
    i32.const 1424
    global.get $__memory_base
    i32.add
    global.get $__memory_base
    i32.const 1360
    i32.add
    i32.store
    i32.const 1428
    global.get $__memory_base
    i32.add
    global.get $__memory_base
    i32.const 1360
    i32.add
    i32.store
    i32.const 1432
    global.get $__memory_base
    i32.add
    global.get $__memory_base
    i32.const 1360
    i32.add
    i32.store
    i32.const 1436
    global.get $__memory_base
    i32.add
    global.get $__memory_base
    i32.const 1376
    i32.add
    i32.store
    i32.const 1440
    global.get $__memory_base
    i32.add
    global.get $__memory_base
    i32.const 1376
    i32.add
    i32.store
    i32.const 1444
    global.get $__memory_base
    i32.add
    global.get $__memory_base
    i32.const 1392
    i32.add
    i32.store
    i32.const 1448
    global.get $__memory_base
    i32.add
    global.get $__memory_base
    i32.const 1392
    i32.add
    i32.store
    i32.const 1452
    global.get $__memory_base
    i32.add
    global.get $__memory_base
    i32.const 1408
    i32.add
    i32.store)
  (func $calc_func (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load16_u
      local.tee 2
      i32.const 128
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 127
      i32.and
      return
    end
    local.get 2
    i32.const 3
    i32.shr_u
    i32.const 15
    i32.and
    i32.const 17
    i32.mul
    local.set 3
    local.get 2
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 7
          i32.and
          br_table 0 (;@3;) 1 (;@2;) 2 (;@1;)
        end
        local.get 1
        i32.load offset=24
        local.get 1
        i32.const 20
        i32.add
        i32.load
        local.get 1
        i32.load16_s
        local.get 1
        i32.load16_s offset=2
        local.get 3
        i32.const 34
        local.get 3
        i32.const 34
        i32.gt_u
        select
        local.get 1
        i32.load16_u offset=56
        call $core_bench_state
        local.set 4
        local.get 1
        i32.load16_u offset=62
        br_if 1 (;@1;)
        local.get 1
        local.get 4
        i32.store16 offset=62
        br 1 (;@1;)
      end
      local.get 1
      i32.load16_u offset=56
      local.set 4
      local.get 1
      i32.load offset=40
      local.get 1
      i32.const 52
      i32.add
      i32.load
      local.get 1
      i32.const 44
      i32.add
      i32.load
      local.get 1
      i32.const 48
      i32.add
      i32.load
      local.get 3
      call $matrix_test
      i32.const 65535
      i32.and
      local.get 4
      call $crcu16
      local.set 4
      local.get 1
      i32.load16_u offset=60
      br_if 0 (;@1;)
      local.get 1
      local.get 4
      i32.store16 offset=60
    end
    local.get 1
    local.get 4
    local.get 1
    i32.load16_u offset=56
    call $crcu16
    i32.store16 offset=56
    local.get 0
    local.get 2
    i32.const 65280
    i32.and
    local.get 4
    i32.const 127
    i32.and
    local.tee 1
    i32.or
    i32.const 128
    i32.or
    i32.store16
    local.get 1)
  (func $core_bench_state (type 5) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    local.get 6
    i32.const 16
    i32.add
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    local.get 6
    i32.const 16
    i32.add
    i32.const 24
    i32.add
    i64.const 0
    i64.store
    local.get 6
    i32.const 48
    i32.add
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    local.get 6
    i32.const 48
    i32.add
    i32.const 24
    i32.add
    i64.const 0
    i64.store
    local.get 6
    i64.const 0
    i64.store offset=48
    local.get 6
    i64.const 0
    i64.store offset=56
    local.get 6
    i64.const 0
    i64.store offset=16
    local.get 6
    i64.const 0
    i64.store offset=24
    local.get 6
    local.get 1
    i32.store offset=12
    block  ;; label = @1
      local.get 1
      i32.load8_u
      local.tee 7
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 6
        i32.const 48
        i32.add
        local.get 6
        i32.const 12
        i32.add
        local.get 6
        i32.const 16
        i32.add
        call $core_state_transition
        i32.const 2
        i32.shl
        i32.add
        local.tee 8
        local.get 8
        i32.load
        i32.const 1
        i32.add
        i32.store
        local.get 6
        i32.load offset=12
        i32.load8_u
        br_if 0 (;@2;)
      end
    end
    local.get 1
    local.get 0
    i32.add
    local.set 9
    block  ;; label = @1
      local.get 0
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      local.get 1
      local.set 8
      loop  ;; label = @2
        block  ;; label = @3
          local.get 8
          i32.load8_u
          local.tee 7
          i32.const 44
          i32.eq
          br_if 0 (;@3;)
          local.get 8
          local.get 7
          local.get 2
          i32.xor
          i32.store8
        end
        local.get 8
        local.get 4
        i32.add
        local.tee 8
        local.get 9
        i32.lt_u
        br_if 0 (;@2;)
      end
      local.get 1
      i32.load8_u
      local.set 7
    end
    local.get 6
    local.get 1
    i32.store offset=12
    block  ;; label = @1
      local.get 7
      i32.const 255
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 6
        i32.const 48
        i32.add
        local.get 6
        i32.const 12
        i32.add
        local.get 6
        i32.const 16
        i32.add
        call $core_state_transition
        i32.const 2
        i32.shl
        i32.add
        local.tee 8
        local.get 8
        i32.load
        i32.const 1
        i32.add
        i32.store
        local.get 6
        i32.load offset=12
        i32.load8_u
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 0
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      loop  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load8_u
          local.tee 8
          i32.const 44
          i32.eq
          br_if 0 (;@3;)
          local.get 1
          local.get 8
          local.get 3
          i32.xor
          i32.store8
        end
        local.get 1
        local.get 4
        i32.add
        local.tee 1
        local.get 9
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    i32.const 0
    local.set 1
    loop  ;; label = @1
      local.get 6
      i32.const 16
      i32.add
      local.get 1
      i32.add
      i32.load
      local.tee 8
      i32.const 16
      i32.shr_u
      local.get 8
      i32.const 65535
      i32.and
      local.get 6
      i32.const 48
      i32.add
      local.get 1
      i32.add
      i32.load
      local.tee 8
      i32.const 16
      i32.shr_u
      local.get 8
      i32.const 65535
      i32.and
      local.get 5
      i32.const 65535
      i32.and
      call $crcu16
      call $crcu16
      call $crcu16
      call $crcu16
      local.set 5
      local.get 1
      i32.const 4
      i32.add
      local.tee 8
      local.set 1
      local.get 8
      i32.const 32
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 6
    i32.const 80
    i32.add
    global.set $__stack_pointer
    local.get 5)
  (func $matrix_test (type 6) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        i32.const -4096
        i32.or
        local.set 5
        local.get 0
        i32.const 1
        i32.shl
        local.set 6
        i32.const 0
        local.set 7
        local.get 2
        local.set 8
        loop  ;; label = @3
          local.get 8
          local.set 9
          local.get 0
          local.set 10
          loop  ;; label = @4
            local.get 9
            local.get 9
            i32.load16_u
            local.get 4
            i32.add
            i32.store16
            local.get 9
            i32.const 2
            i32.add
            local.set 9
            local.get 10
            i32.const -1
            i32.add
            local.tee 10
            br_if 0 (;@4;)
          end
          local.get 8
          local.get 6
          i32.add
          local.set 8
          local.get 7
          i32.const 1
          i32.add
          local.tee 7
          local.get 0
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 0
        i32.const 1
        i32.shl
        local.set 11
        local.get 0
        i32.const 2
        i32.shl
        local.set 12
        i32.const 0
        local.set 13
        local.get 2
        local.set 7
        local.get 1
        local.set 6
        loop  ;; label = @3
          local.get 7
          local.set 9
          local.get 6
          local.set 10
          local.get 0
          local.set 8
          loop  ;; label = @4
            local.get 10
            local.get 9
            i32.load16_s
            local.get 4
            i32.mul
            i32.store
            local.get 9
            i32.const 2
            i32.add
            local.set 9
            local.get 10
            i32.const 4
            i32.add
            local.set 10
            local.get 8
            i32.const -1
            i32.add
            local.tee 8
            br_if 0 (;@4;)
          end
          local.get 7
          local.get 11
          i32.add
          local.set 7
          local.get 6
          local.get 12
          i32.add
          local.set 6
          local.get 13
          i32.const 1
          i32.add
          local.tee 13
          local.get 0
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 0
        i32.const 1
        i32.shl
        local.set 13
        i32.const 0
        local.set 6
        local.get 0
        local.get 1
        local.get 5
        call $matrix_sum
        i32.const 65535
        i32.and
        i32.const 0
        call $crcu16
        local.set 11
        local.get 2
        local.set 7
        loop  ;; label = @3
          i32.const 0
          local.set 9
          local.get 0
          local.set 8
          i32.const 0
          local.set 10
          loop  ;; label = @4
            local.get 3
            local.get 9
            i32.add
            i32.load16_s
            local.get 7
            local.get 9
            i32.add
            i32.load16_s
            i32.mul
            local.get 10
            i32.add
            local.set 10
            local.get 9
            i32.const 2
            i32.add
            local.set 9
            local.get 8
            i32.const -1
            i32.add
            local.tee 8
            br_if 0 (;@4;)
          end
          local.get 1
          local.get 6
          i32.const 2
          i32.shl
          i32.add
          local.get 10
          i32.store
          local.get 7
          local.get 13
          i32.add
          local.set 7
          local.get 6
          i32.const 1
          i32.add
          local.tee 6
          local.get 0
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 0
        local.get 1
        local.get 5
        call $matrix_sum
        i32.const 65535
        i32.and
        local.get 11
        call $crcu16
        local.set 9
        local.get 0
        local.get 1
        local.get 2
        local.get 3
        call $matrix_mul_matrix
        local.get 0
        local.get 1
        local.get 5
        call $matrix_sum
        i32.const 65535
        i32.and
        local.get 9
        call $crcu16
        local.set 9
        local.get 0
        local.get 1
        local.get 2
        local.get 3
        call $matrix_mul_matrix_bitextract
        local.get 0
        i32.const 1
        i32.shl
        local.set 7
        i32.const 0
        local.set 8
        local.get 0
        local.get 1
        local.get 5
        call $matrix_sum
        i32.const 65535
        i32.and
        local.get 9
        call $crcu16
        local.set 3
        loop  ;; label = @3
          local.get 2
          local.set 9
          local.get 0
          local.set 10
          loop  ;; label = @4
            local.get 9
            local.get 9
            i32.load16_u
            local.get 4
            i32.sub
            i32.store16
            local.get 9
            i32.const 2
            i32.add
            local.set 9
            local.get 10
            i32.const -1
            i32.add
            local.tee 10
            br_if 0 (;@4;)
          end
          local.get 2
          local.get 7
          i32.add
          local.set 2
          local.get 8
          i32.const 1
          i32.add
          local.tee 8
          local.get 0
          i32.ne
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      i32.const 0
      i32.const 0
      i32.const 0
      i32.const 0
      i32.const 0
      call $crcu16
      call $crcu16
      call $crcu16
      call $crcu16
      local.set 3
    end
    local.get 3
    i32.extend16_s)
  (func $crcu16 (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 2
    local.get 0
    local.set 3
    loop  ;; label = @1
      local.get 1
      i32.const 1
      i32.shr_u
      i32.const 32767
      i32.and
      local.tee 4
      i32.const -24575
      i32.xor
      local.get 4
      local.get 3
      local.get 1
      i32.xor
      i32.const 1
      i32.and
      select
      local.set 1
      local.get 3
      i32.const 254
      i32.and
      i32.const 1
      i32.shr_u
      local.set 3
      local.get 2
      i32.const 255
      i32.and
      local.set 4
      local.get 2
      i32.const 1
      i32.add
      local.set 2
      local.get 4
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
    end
    local.get 0
    i32.const 8
    i32.shr_u
    local.set 2
    i32.const 0
    local.set 3
    loop  ;; label = @1
      local.get 1
      i32.const 1
      i32.shr_u
      i32.const 32767
      i32.and
      local.tee 4
      i32.const -24575
      i32.xor
      local.get 4
      local.get 2
      local.get 1
      i32.xor
      i32.const 1
      i32.and
      select
      local.set 1
      local.get 2
      i32.const 254
      i32.and
      i32.const 1
      i32.shr_u
      local.set 2
      local.get 3
      i32.const 255
      i32.and
      local.set 4
      local.get 3
      i32.const 1
      i32.add
      local.set 3
      local.get 4
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
    end
    local.get 1
    i32.const 65535
    i32.and)
  (func $cmp_complex (type 0) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 2
    call $calc_func
    i32.const 65535
    i32.and
    local.get 1
    local.get 2
    call $calc_func
    i32.const 65535
    i32.and
    i32.sub)
  (func $cmp_idx (type 0) (param i32 i32 i32) (result i32)
    block  ;; label = @1
      local.get 2
      br_if 0 (;@1;)
      local.get 0
      local.get 0
      i32.load8_u offset=1
      i32.store8
      local.get 1
      local.get 1
      i32.load8_u offset=1
      i32.store8
    end
    local.get 0
    i32.load16_s offset=2
    local.get 1
    i32.load16_s offset=2
    i32.sub)
  (func $copy_info (type 7) (param i32 i32)
    local.get 0
    local.get 1
    i32.load align=2
    i32.store align=2)
  (func $core_bench_list (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load offset=36
    local.set 3
    local.get 0
    i32.load16_s offset=4
    local.set 4
    i32.const 0
    local.set 5
    local.get 2
    i32.const 0
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store16 offset=10
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.const 1
        i32.ge_s
        br_if 0 (;@2;)
        local.get 1
        local.set 6
        i32.const 0
        local.set 7
        local.get 3
        local.set 8
        i32.const 0
        local.set 9
        i32.const 0
        local.set 10
        br 1 (;@1;)
      end
      i32.const 0
      local.set 11
      i32.const 0
      local.set 10
      i32.const 0
      local.set 9
      i32.const 0
      local.set 7
      local.get 1
      local.set 6
      loop  ;; label = @2
        local.get 2
        local.get 11
        i32.const 255
        i32.and
        local.tee 5
        i32.store16 offset=8
        local.get 3
        local.get 2
        i32.const 8
        i32.add
        call $core_list_find
        local.set 12
        i32.const 0
        local.set 8
        block  ;; label = @3
          local.get 3
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.set 13
          loop  ;; label = @4
            local.get 3
            local.tee 8
            i32.load
            local.set 3
            local.get 8
            local.get 13
            i32.store
            local.get 8
            local.set 13
            local.get 3
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 12
            br_if 0 (;@4;)
            local.get 7
            i32.const 1
            i32.add
            local.set 7
            local.get 8
            i32.load
            i32.load offset=4
            i32.load8_u offset=1
            i32.const 1
            i32.and
            local.set 3
            br 1 (;@3;)
          end
          local.get 9
          i32.const 1
          i32.add
          local.set 9
          local.get 12
          i32.load offset=4
          i32.load16_u
          local.tee 3
          local.get 3
          i32.const 9
          i32.shr_u
          i32.and
          i32.const 1
          i32.and
          local.set 3
          local.get 12
          i32.load
          local.tee 13
          i32.eqz
          br_if 0 (;@3;)
          local.get 12
          local.get 13
          i32.load
          i32.store
          local.get 13
          local.get 8
          i32.load
          i32.store
          local.get 8
          local.get 13
          i32.store
        end
        block  ;; label = @3
          local.get 6
          i32.extend16_s
          i32.const 0
          i32.lt_s
          br_if 0 (;@3;)
          local.get 2
          local.get 6
          i32.const 1
          i32.add
          local.tee 6
          i32.store16 offset=10
        end
        local.get 3
        local.get 10
        i32.add
        local.set 10
        local.get 8
        local.set 3
        local.get 11
        i32.const 1
        i32.add
        i32.extend16_s
        local.tee 11
        local.get 4
        i32.lt_s
        br_if 0 (;@2;)
      end
    end
    local.get 9
    i32.const 2
    i32.shl
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      local.get 8
      local.get 0
      call $core_list_mergesort_cmp_complex
      local.set 8
    end
    local.get 3
    local.get 7
    i32.sub
    local.set 12
    local.get 8
    i32.load
    local.tee 3
    i32.load offset=4
    local.set 9
    local.get 3
    local.get 3
    i32.load
    local.tee 11
    i32.load offset=4
    i32.store offset=4
    local.get 3
    local.get 11
    i32.load
    i32.store
    local.get 11
    local.get 9
    i32.store offset=4
    local.get 11
    i32.const 0
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 6
          i32.extend16_s
          i32.const -1
          i32.gt_s
          br_if 0 (;@3;)
          local.get 8
          local.set 3
          loop  ;; label = @4
            local.get 3
            i32.load offset=4
            i32.load8_u
            local.get 5
            i32.eq
            br_if 3 (;@1;)
            local.get 3
            i32.load
            local.tee 3
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 6
        i32.const 65535
        i32.and
        local.set 13
        local.get 8
        local.set 3
        loop  ;; label = @3
          local.get 3
          i32.load offset=4
          i32.load16_u offset=2
          local.get 13
          i32.eq
          br_if 2 (;@1;)
          local.get 3
          i32.load
          local.tee 3
          br_if 0 (;@3;)
        end
      end
      local.get 8
      i32.load
      local.set 3
    end
    local.get 12
    local.get 10
    i32.add
    local.set 13
    local.get 8
    i32.load offset=4
    i32.load16_u
    i32.const 65535
    i32.and
    local.set 12
    loop  ;; label = @1
      local.get 12
      local.get 13
      i32.const 65535
      i32.and
      call $crcu16
      local.set 13
      local.get 3
      i32.load
      local.tee 3
      br_if 0 (;@1;)
    end
    local.get 11
    local.get 8
    i32.load
    local.tee 3
    i32.load offset=4
    i32.store offset=4
    local.get 11
    local.get 3
    i32.load
    i32.store
    local.get 3
    local.get 9
    i32.store offset=4
    local.get 3
    local.get 11
    i32.store
    block  ;; label = @1
      local.get 8
      i32.const 0
      call $core_list_mergesort_cmp_idx
      local.tee 3
      i32.load
      local.tee 8
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=4
      i32.load16_u
      i32.const 65535
      i32.and
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.get 13
        i32.const 65535
        i32.and
        call $crcu16
        local.set 13
        local.get 8
        i32.load
        local.tee 8
        br_if 0 (;@2;)
      end
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 13)
  (func $core_list_find (type 1) (param i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load16_s offset=2
          local.tee 2
          i32.const -1
          i32.gt_s
          br_if 0 (;@3;)
          i32.const 0
          local.set 3
          local.get 0
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          i32.load16_u
          i32.const 65535
          i32.and
          local.set 1
          loop  ;; label = @4
            local.get 0
            i32.load offset=4
            i32.load8_u
            local.get 1
            i32.eq
            br_if 3 (;@1;)
            local.get 0
            i32.load
            local.tee 0
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        i32.const 0
        local.set 3
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 65535
        i32.and
        local.set 1
        loop  ;; label = @3
          local.get 0
          i32.load offset=4
          i32.load16_u offset=2
          local.get 1
          i32.eq
          br_if 2 (;@1;)
          local.get 0
          i32.load
          local.tee 0
          br_if 0 (;@3;)
        end
      end
      local.get 3
      return
    end
    local.get 0)
  (func $core_list_mergesort_cmp_complex (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 1
    local.set 2
    loop  ;; label = @1
      i32.const 0
      local.set 3
      i32.const 0
      local.set 4
      i32.const 0
      local.set 5
      loop  ;; label = @2
        local.get 3
        local.set 6
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 1
            i32.ge_s
            br_if 0 (;@4;)
            i32.const 0
            local.set 7
            local.get 0
            local.set 8
            br 1 (;@3;)
          end
          i32.const 0
          local.set 9
          local.get 0
          local.set 8
          block  ;; label = @4
            loop  ;; label = @5
              local.get 8
              i32.load
              local.tee 8
              i32.eqz
              br_if 1 (;@4;)
              local.get 2
              local.get 9
              i32.const 1
              i32.add
              local.tee 9
              i32.ne
              br_if 0 (;@5;)
            end
            local.get 2
            local.set 7
            br 1 (;@3;)
          end
          local.get 9
          i32.const 1
          i32.add
          local.set 7
          i32.const 0
          local.set 8
        end
        local.get 6
        i32.const 1
        i32.add
        local.set 3
        local.get 0
        local.set 9
        local.get 8
        local.set 0
        local.get 2
        local.set 10
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 7
                    i32.const 0
                    i32.gt_s
                    br_if 0 (;@8;)
                    local.get 10
                    i32.const 1
                    i32.lt_s
                    br_if 5 (;@3;)
                    local.get 0
                    i32.eqz
                    br_if 5 (;@3;)
                    local.get 7
                    br_if 0 (;@8;)
                    local.get 10
                    i32.const -1
                    i32.add
                    local.set 10
                    local.get 0
                    i32.load
                    local.set 11
                    i32.const 0
                    local.set 7
                    br 1 (;@7;)
                  end
                  local.get 10
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 0
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 0
                  i32.load offset=4
                  local.set 8
                  local.get 9
                  i32.load offset=4
                  local.get 1
                  call $calc_func
                  local.get 8
                  local.get 1
                  call $calc_func
                  i32.le_u
                  br_if 1 (;@6;)
                  local.get 10
                  i32.const -1
                  i32.add
                  local.set 10
                  local.get 0
                  i32.load
                  local.set 11
                end
                local.get 9
                local.set 12
                local.get 0
                local.set 8
                br 1 (;@5;)
              end
              local.get 7
              i32.const -1
              i32.add
              local.set 7
              local.get 9
              i32.load
              local.set 12
              local.get 0
              local.set 11
              local.get 9
              local.set 8
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 4
                br_if 0 (;@6;)
                local.get 8
                local.set 5
                br 1 (;@5;)
              end
              local.get 4
              local.get 8
              i32.store
            end
            local.get 12
            local.set 9
            local.get 11
            local.set 0
            local.get 8
            local.set 4
            br 0 (;@4;)
          end
        end
        local.get 0
        br_if 0 (;@2;)
      end
      local.get 4
      i32.const 0
      i32.store
      local.get 2
      i32.const 1
      i32.shl
      local.set 2
      local.get 5
      local.set 0
      local.get 6
      br_if 0 (;@1;)
    end
    local.get 5)
  (func $core_list_mergesort_cmp_idx (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 1
    local.set 2
    loop  ;; label = @1
      i32.const 0
      local.set 3
      i32.const 0
      local.set 4
      i32.const 0
      local.set 5
      loop  ;; label = @2
        local.get 3
        local.set 6
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 1
            i32.ge_s
            br_if 0 (;@4;)
            i32.const 0
            local.set 7
            local.get 0
            local.set 8
            br 1 (;@3;)
          end
          i32.const 0
          local.set 9
          local.get 0
          local.set 8
          block  ;; label = @4
            loop  ;; label = @5
              local.get 8
              i32.load
              local.tee 8
              i32.eqz
              br_if 1 (;@4;)
              local.get 2
              local.get 9
              i32.const 1
              i32.add
              local.tee 9
              i32.ne
              br_if 0 (;@5;)
            end
            local.get 2
            local.set 7
            br 1 (;@3;)
          end
          local.get 9
          i32.const 1
          i32.add
          local.set 7
          i32.const 0
          local.set 8
        end
        local.get 6
        i32.const 1
        i32.add
        local.set 3
        local.get 0
        local.set 9
        local.get 8
        local.set 0
        local.get 2
        local.set 10
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 7
                    i32.const 0
                    i32.gt_s
                    br_if 0 (;@8;)
                    local.get 10
                    i32.const 1
                    i32.lt_s
                    br_if 5 (;@3;)
                    local.get 0
                    i32.eqz
                    br_if 5 (;@3;)
                    local.get 7
                    br_if 0 (;@8;)
                    local.get 10
                    i32.const -1
                    i32.add
                    local.set 10
                    local.get 0
                    i32.load
                    local.set 11
                    i32.const 0
                    local.set 7
                    br 1 (;@7;)
                  end
                  local.get 10
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 0
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 0
                  i32.load offset=4
                  local.set 8
                  local.get 9
                  i32.load offset=4
                  local.set 12
                  block  ;; label = @8
                    local.get 1
                    br_if 0 (;@8;)
                    local.get 12
                    local.get 12
                    i32.load8_u offset=1
                    i32.store8
                    local.get 8
                    local.get 8
                    i32.load8_u offset=1
                    i32.store8
                  end
                  local.get 12
                  i32.load16_s offset=2
                  local.get 8
                  i32.load16_s offset=2
                  i32.le_s
                  br_if 1 (;@6;)
                  local.get 10
                  i32.const -1
                  i32.add
                  local.set 10
                  local.get 0
                  i32.load
                  local.set 11
                end
                local.get 9
                local.set 12
                local.get 0
                local.set 8
                br 1 (;@5;)
              end
              local.get 7
              i32.const -1
              i32.add
              local.set 7
              local.get 9
              i32.load
              local.set 12
              local.get 0
              local.set 11
              local.get 9
              local.set 8
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 4
                br_if 0 (;@6;)
                local.get 8
                local.set 5
                br 1 (;@5;)
              end
              local.get 4
              local.get 8
              i32.store
            end
            local.get 12
            local.set 9
            local.get 11
            local.set 0
            local.get 8
            local.set 4
            br 0 (;@4;)
          end
        end
        local.get 0
        br_if 0 (;@2;)
      end
      local.get 4
      i32.const 0
      i32.store
      local.get 2
      i32.const 1
      i32.shl
      local.set 2
      local.get 5
      local.set 0
      local.get 6
      br_if 0 (;@1;)
    end
    local.get 5)
  (func $core_list_reverse (type 2) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    i32.const 0
    local.set 1
    loop  ;; label = @1
      local.get 0
      local.tee 2
      i32.load
      local.set 0
      local.get 2
      local.get 1
      i32.store
      local.get 2
      local.set 1
      local.get 0
      br_if 0 (;@1;)
    end
    local.get 2)
  (func $core_list_remove (type 2) (param i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.load offset=4
    local.set 1
    local.get 0
    local.get 0
    i32.load
    local.tee 2
    i32.load offset=4
    i32.store offset=4
    local.get 0
    local.get 2
    i32.load
    i32.store
    local.get 2
    local.get 1
    i32.store offset=4
    local.get 2
    i32.const 0
    i32.store
    local.get 2)
  (func $core_list_undo_remove (type 1) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    local.get 1
    i32.load offset=4
    i32.store offset=4
    local.get 0
    local.get 1
    i32.load
    i32.store
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    local.get 0
    i32.store
    local.get 0)
  (func $core_list_init (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 0
    local.set 3
    local.get 1
    i32.const 0
    i32.store
    local.get 1
    local.get 1
    local.get 0
    i32.const 20
    i32.div_u
    i32.const -2
    i32.add
    local.tee 4
    i32.const 3
    i32.shl
    i32.add
    local.tee 5
    i32.store offset=4
    local.get 5
    i32.const 32896
    i32.store align=2
    local.get 1
    i32.const 8
    i32.add
    local.set 6
    local.get 5
    i32.const 4
    i32.add
    local.set 7
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 100
        i32.ge_u
        br_if 0 (;@2;)
        local.get 6
        local.set 8
        br 1 (;@1;)
      end
      local.get 1
      local.get 6
      i32.store
      local.get 1
      i32.const 0
      i32.store offset=8
      local.get 7
      i32.const 2147483647
      i32.store align=2
      local.get 1
      i32.const 12
      i32.add
      local.get 7
      i32.store
      local.get 7
      i32.const 4
      i32.add
      local.set 7
      local.get 1
      i32.const 16
      i32.add
      local.set 8
      local.get 6
      local.set 3
    end
    block  ;; label = @1
      local.get 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 5
      local.get 4
      i32.const 2
      i32.shl
      i32.add
      local.set 9
      i32.const 0
      local.set 0
      loop  ;; label = @2
        block  ;; label = @3
          local.get 8
          i32.const 8
          i32.add
          local.tee 6
          local.get 5
          i32.ge_u
          br_if 0 (;@3;)
          local.get 7
          i32.const 4
          i32.add
          local.tee 10
          local.get 9
          i32.ge_u
          br_if 0 (;@3;)
          local.get 8
          local.get 3
          i32.store
          local.get 8
          local.get 7
          i32.store offset=4
          local.get 7
          i32.const 32767
          i32.store16 offset=2
          local.get 7
          local.get 0
          local.get 2
          i32.xor
          i32.const 3
          i32.shl
          i32.const 120
          i32.and
          local.get 0
          i32.const 7
          i32.and
          i32.or
          i32.const 257
          i32.mul
          i32.store16
          local.get 1
          local.get 8
          i32.store
          local.get 8
          local.set 3
          local.get 10
          local.set 7
          local.get 6
          local.set 8
        end
        local.get 4
        local.get 0
        i32.const 1
        i32.add
        local.tee 0
        i32.ne
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 3
      i32.load
      local.tee 8
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.const 5
      i32.div_u
      local.set 6
      i32.const 1
      local.set 0
      loop  ;; label = @2
        local.get 8
        local.set 8
        local.get 0
        i32.const 1
        i32.add
        local.set 7
        block  ;; label = @3
          local.get 0
          local.get 6
          i32.lt_u
          br_if 0 (;@3;)
          local.get 7
          i32.const 8
          i32.shl
          i32.const 1792
          i32.and
          local.get 0
          local.get 2
          i32.xor
          i32.const 16383
          i32.and
          i32.or
          local.set 0
        end
        local.get 3
        i32.load offset=4
        local.get 0
        i32.store16 offset=2
        local.get 8
        local.set 3
        local.get 7
        local.set 0
        local.get 8
        i32.load
        local.tee 8
        br_if 0 (;@2;)
      end
    end
    local.get 1
    i32.const 0
    call $core_list_mergesort_cmp_idx)
  (func $core_list_insert_new (type 5) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 6
    block  ;; label = @1
      local.get 2
      i32.load
      local.tee 7
      i32.const 8
      i32.add
      local.tee 8
      local.get 4
      i32.ge_u
      br_if 0 (;@1;)
      local.get 3
      i32.load
      i32.const 4
      i32.add
      local.get 5
      i32.ge_u
      br_if 0 (;@1;)
      local.get 2
      local.get 8
      i32.store
      local.get 7
      local.get 0
      i32.load
      i32.store
      local.get 0
      local.get 7
      i32.store
      local.get 7
      local.get 3
      i32.load
      i32.store offset=4
      local.get 3
      local.get 3
      i32.load
      i32.const 4
      i32.add
      i32.store
      local.get 7
      i32.load offset=4
      local.get 1
      i32.load align=2
      i32.store align=2
      local.get 7
      local.set 6
    end
    local.get 6)
  (func $core_list_mergesort (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 1
    local.set 3
    loop  ;; label = @1
      i32.const 0
      local.set 4
      i32.const 0
      local.set 5
      i32.const 0
      local.set 6
      loop  ;; label = @2
        local.get 4
        local.set 7
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 1
            i32.ge_s
            br_if 0 (;@4;)
            i32.const 0
            local.set 8
            local.get 0
            local.set 9
            br 1 (;@3;)
          end
          i32.const 0
          local.set 10
          local.get 0
          local.set 9
          block  ;; label = @4
            loop  ;; label = @5
              local.get 9
              i32.load
              local.tee 9
              i32.eqz
              br_if 1 (;@4;)
              local.get 3
              local.get 10
              i32.const 1
              i32.add
              local.tee 10
              i32.ne
              br_if 0 (;@5;)
            end
            local.get 3
            local.set 8
            br 1 (;@3;)
          end
          local.get 10
          i32.const 1
          i32.add
          local.set 8
          i32.const 0
          local.set 9
        end
        local.get 7
        i32.const 1
        i32.add
        local.set 4
        local.get 0
        local.set 10
        local.get 9
        local.set 0
        local.get 3
        local.set 11
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 8
                    i32.const 0
                    i32.gt_s
                    br_if 0 (;@8;)
                    local.get 11
                    i32.const 1
                    i32.lt_s
                    br_if 5 (;@3;)
                    local.get 0
                    i32.eqz
                    br_if 5 (;@3;)
                    local.get 8
                    br_if 0 (;@8;)
                    local.get 11
                    i32.const -1
                    i32.add
                    local.set 11
                    local.get 0
                    i32.load
                    local.set 12
                    i32.const 0
                    local.set 8
                    br 1 (;@7;)
                  end
                  local.get 11
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 0
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 10
                  i32.load offset=4
                  local.get 0
                  i32.load offset=4
                  local.get 2
                  local.get 1
                  call_indirect (type 0)
                  i32.const 0
                  i32.le_s
                  br_if 1 (;@6;)
                  local.get 11
                  i32.const -1
                  i32.add
                  local.set 11
                  local.get 0
                  i32.load
                  local.set 12
                end
                local.get 10
                local.set 13
                local.get 0
                local.set 9
                br 1 (;@5;)
              end
              local.get 8
              i32.const -1
              i32.add
              local.set 8
              local.get 10
              i32.load
              local.set 13
              local.get 0
              local.set 12
              local.get 10
              local.set 9
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 5
                br_if 0 (;@6;)
                local.get 9
                local.set 6
                br 1 (;@5;)
              end
              local.get 5
              local.get 9
              i32.store
            end
            local.get 13
            local.set 10
            local.get 12
            local.set 0
            local.get 9
            local.set 5
            br 0 (;@4;)
          end
        end
        local.get 0
        br_if 0 (;@2;)
      end
      local.get 5
      i32.const 0
      i32.store
      local.get 3
      i32.const 1
      i32.shl
      local.set 3
      local.get 6
      local.set 0
      local.get 7
      br_if 0 (;@1;)
    end
    local.get 6)
  (func $iterate (type 2) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i64.const 0
    i64.store offset=56 align=4
    block  ;; label = @1
      local.get 0
      i32.load offset=28
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 2
      loop  ;; label = @2
        local.get 0
        local.get 0
        i32.const 1
        call $core_bench_list
        local.get 0
        i32.load16_u offset=56
        call $crcu16
        i32.store16 offset=56
        local.get 0
        local.get 0
        i32.const -1
        call $core_bench_list
        local.get 0
        i32.load16_u offset=56
        call $crcu16
        local.tee 3
        i32.store16 offset=56
        block  ;; label = @3
          local.get 2
          br_if 0 (;@3;)
          local.get 0
          local.get 3
          i32.store16 offset=58
        end
        local.get 1
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        i32.ne
        br_if 0 (;@2;)
      end
    end
    i32.const 0)
  (func $main (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 f64 i64 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 384
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.load offset=4
    i32.store offset=292
    local.get 2
    local.get 0
    i32.store offset=288
    global.get $__memory_base
    i32.const 9
    i32.add
    local.get 2
    i32.const 288
    i32.add
    call $printf
    drop
    local.get 2
    i32.const 1
    i32.store8 offset=370
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.const 1
                  i32.gt_s
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 3
                  local.get 2
                  i32.const 0
                  i32.store offset=304
                  br 1 (;@6;)
                end
                local.get 2
                local.get 1
                i32.load offset=4
                call $parseval
                local.tee 3
                i32.store16 offset=304
                block  ;; label = @7
                  local.get 0
                  i32.const 2
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 0
                  i32.store16 offset=306
                  br 1 (;@6;)
                end
                local.get 2
                local.get 1
                i32.load offset=8
                call $parseval
                i32.store16 offset=306
                local.get 0
                i32.const 3
                i32.gt_s
                br_if 1 (;@5;)
              end
              local.get 2
              i32.const 0
              i32.store16 offset=308
              br 1 (;@4;)
            end
            local.get 2
            local.get 1
            i32.load offset=12
            call $parseval
            i32.store16 offset=308
            local.get 0
            i32.const 4
            i32.ne
            br_if 1 (;@3;)
          end
          local.get 2
          i32.const 0
          i32.store offset=332
          br 1 (;@2;)
        end
        local.get 2
        local.get 1
        i32.load offset=16
        call $parseval
        i32.store offset=332
        local.get 0
        i32.const 5
        i32.le_s
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=20
        call $parseval
        local.tee 4
        br_if 1 (;@1;)
      end
      i32.const 7
      local.set 4
    end
    local.get 2
    local.get 4
    i32.store offset=336
    local.get 2
    i32.load16_u offset=308
    local.set 5
    local.get 2
    i32.load16_u offset=306
    local.set 6
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 65535
          i32.and
          local.tee 7
          br_if 0 (;@3;)
          local.get 6
          i32.const 65535
          i32.and
          br_if 0 (;@3;)
          i32.const 0
          local.set 4
          local.get 5
          i32.const 65535
          i32.and
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 7
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 6
        i32.const 65535
        i32.and
        br_if 1 (;@1;)
        i32.const 13333
        local.set 4
        local.get 5
        i32.const 65535
        i32.and
        br_if 1 (;@1;)
      end
      local.get 2
      i32.const 102
      i32.store16 offset=308
      local.get 2
      local.get 4
      i32.store16 offset=306
      local.get 2
      local.get 4
      i32.store16 offset=304
      local.get 4
      local.set 3
    end
    i32.const 0
    local.set 4
    i32.const 0
    local.set 6
    block  ;; label = @1
      local.get 0
      i32.const 8
      i32.lt_s
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=28
      call $parseval
      local.set 6
    end
    local.get 2
    local.get 6
    i32.extend16_s
    i32.const 2000
    local.get 6
    i32.const 16
    i32.shl
    select
    local.tee 5
    i32.store offset=328
    local.get 5
    call $malloc
    local.set 1
    local.get 2
    i32.const 0
    i32.store16 offset=368
    local.get 2
    local.get 1
    i32.store offset=312
    local.get 2
    i32.load offset=336
    local.set 0
    i32.const 0
    local.set 6
    loop  ;; label = @1
      local.get 6
      local.get 0
      local.get 4
      i32.shr_u
      i32.const 1
      i32.and
      i32.add
      local.set 6
      local.get 4
      i32.const 1
      i32.add
      local.tee 4
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 2
    local.get 5
    local.get 6
    i32.const 65535
    i32.and
    i32.div_u
    local.tee 5
    i32.store offset=328
    i32.const 0
    local.set 4
    i32.const 0
    local.set 6
    loop  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          local.get 4
          i32.shr_u
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 4
          i32.const 1
          i32.add
          local.set 4
          br 1 (;@2;)
        end
        local.get 2
        i32.const 304
        i32.add
        local.get 4
        i32.const 1
        i32.add
        local.tee 4
        i32.const 2
        i32.shl
        i32.add
        i32.const 8
        i32.add
        local.get 1
        local.get 5
        local.get 6
        i32.const 65535
        i32.and
        i32.mul
        i32.add
        i32.store
        local.get 6
        i32.const 1
        i32.add
        local.set 6
      end
      local.get 4
      i32.const 3
      i32.ne
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 0
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 5
      local.get 2
      i32.load offset=316
      local.get 3
      i32.extend16_s
      call $core_list_init
      i32.store offset=340
      local.get 2
      i32.load offset=336
      local.set 0
    end
    block  ;; label = @1
      local.get 0
      i32.const 2
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 5
      local.get 2
      i32.const 304
      i32.add
      i32.const 16
      i32.add
      i32.load
      local.get 2
      i32.load16_u offset=306
      i32.const 16
      i32.shl
      local.get 3
      i32.extend16_s
      i32.or
      local.get 2
      i32.const 344
      i32.add
      call $core_init_matrix
      drop
      local.get 2
      i32.load offset=336
      local.set 0
    end
    block  ;; label = @1
      local.get 0
      i32.const 4
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.load offset=328
      local.get 2
      i32.load16_s offset=304
      local.get 2
      i32.const 324
      i32.add
      i32.load
      call $core_init_state
    end
    block  ;; label = @1
      local.get 2
      i32.load offset=332
      br_if 0 (;@1;)
      local.get 2
      i32.const 1
      i32.store offset=332
      loop  ;; label = @2
        local.get 2
        local.get 2
        i32.load offset=332
        i32.const 10
        i32.mul
        i32.store offset=332
        global.get $__memory_base
        local.set 4
        global.get $_CLOCK_REALTIME
        local.tee 6
        local.get 4
        i32.const 1464
        i32.add
        local.tee 0
        call $clock_gettime
        drop
        local.get 2
        i32.const 304
        i32.add
        call $iterate
        drop
        local.get 6
        local.get 4
        i32.const 1480
        i32.add
        local.tee 4
        call $clock_gettime
        drop
        local.get 4
        i64.load
        local.get 0
        i64.load
        i64.sub
        i64.const 1000
        i64.mul
        local.get 4
        i32.load offset=8
        local.get 0
        i32.load offset=8
        i32.sub
        i32.const 1000000
        i32.div_s
        i64.extend_i32_s
        i64.add
        f64.convert_i64_s
        f64.const 0x1.f4p+9 (;=1000;)
        f64.div
        local.tee 8
        f64.const 0x1p+0 (;=1;)
        f64.lt
        br_if 0 (;@2;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 8
          f64.const 0x1p+32 (;=4.29497e+09;)
          f64.lt
          local.get 8
          f64.const 0x0p+0 (;=0;)
          f64.ge
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.trunc_f64_u
          local.set 4
          br 1 (;@2;)
        end
        i32.const 0
        local.set 4
      end
      local.get 2
      local.get 2
      i32.load offset=332
      i32.const 10
      local.get 4
      i32.const 1
      local.get 4
      select
      i32.div_u
      i32.const 1
      i32.add
      i32.mul
      i32.store offset=332
    end
    global.get $__memory_base
    local.set 4
    global.get $_CLOCK_REALTIME
    local.tee 1
    local.get 4
    i32.const 1464
    i32.add
    local.tee 0
    call $clock_gettime
    drop
    local.get 2
    i32.const 304
    i32.add
    call $iterate
    drop
    local.get 1
    local.get 4
    i32.const 1480
    i32.add
    local.tee 6
    call $clock_gettime
    drop
    local.get 6
    i64.load
    local.get 0
    i64.load
    i64.sub
    i64.const 1000
    i64.mul
    local.get 6
    i32.load offset=8
    local.get 0
    i32.load offset=8
    i32.sub
    i32.const 1000000
    i32.div_s
    i64.extend_i32_s
    i64.add
    local.set 9
    i32.const 65535
    local.set 6
    i32.const 0
    local.set 10
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.load offset=328
              local.tee 11
              i32.const 65535
              i32.and
              local.get 2
              i32.load16_u offset=308
              local.get 2
              i32.load16_u offset=306
              local.get 2
              i32.load16_u offset=304
              i32.const 0
              call $crcu16
              call $crcu16
              call $crcu16
              call $crcu16
              local.tee 12
              i32.const 31492
              i32.gt_s
              br_if 0 (;@5;)
              local.get 12
              i32.const 6386
              i32.eq
              br_if 1 (;@4;)
              local.get 12
              i32.const 20143
              i32.ne
              br_if 4 (;@1;)
              global.get $__memory_base
              i32.const 370
              i32.add
              local.set 4
              i32.const 2
              local.set 0
              br 2 (;@3;)
            end
            block  ;; label = @5
              local.get 12
              i32.const 59893
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 12
                i32.const 35330
                i32.ne
                br_if 0 (;@6;)
                local.get 4
                i32.const 504
                i32.add
                local.set 4
                i32.const 0
                local.set 0
                br 4 (;@2;)
              end
              local.get 12
              i32.const 31493
              i32.ne
              br_if 4 (;@1;)
              global.get $__memory_base
              i32.const 418
              i32.add
              local.set 4
              i32.const 1
              local.set 0
              br 2 (;@3;)
            end
            global.get $__memory_base
            i32.const 548
            i32.add
            local.set 4
            i32.const 3
            local.set 0
            i32.const 1
            local.set 10
            br 2 (;@2;)
          end
          global.get $__memory_base
          i32.const 461
          i32.add
          local.set 4
          i32.const 4
          local.set 0
        end
        i32.const 0
        local.set 10
      end
      local.get 4
      call $puts
      drop
      block  ;; label = @2
        global.get $default_num_contexts
        i32.load
        br_if 0 (;@2;)
        i32.const 0
        local.set 6
        br 1 (;@1;)
      end
      global.get $__memory_base
      local.tee 4
      i32.const 1316
      i32.add
      local.get 0
      i32.const 1
      i32.shl
      local.tee 0
      i32.add
      local.set 13
      local.get 4
      i32.const 1306
      i32.add
      local.get 0
      i32.add
      local.set 14
      local.get 4
      i32.const 1296
      i32.add
      local.get 0
      i32.add
      local.set 15
      i32.const 0
      local.set 5
      local.get 2
      i32.load16_u offset=366
      local.set 3
      local.get 2
      i32.load16_u offset=364
      local.set 7
      local.get 2
      i32.load16_u offset=362
      local.set 16
      i32.const 0
      local.set 1
      i32.const 0
      local.set 6
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.load offset=336
            local.tee 4
            i32.const 1
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.set 0
            br 1 (;@3;)
          end
          i32.const 0
          local.set 0
          local.get 16
          local.get 15
          i32.load16_u
          local.tee 17
          i32.eq
          br_if 0 (;@3;)
          local.get 2
          local.get 17
          i32.store offset=280
          local.get 2
          local.get 16
          i32.store offset=276
          local.get 2
          local.get 5
          i32.store offset=272
          global.get $__memory_base
          i32.const 874
          i32.add
          local.get 2
          i32.const 272
          i32.add
          call $printf
          drop
          i32.const 1
          local.set 0
          local.get 2
          i32.load offset=336
          local.set 4
        end
        block  ;; label = @3
          local.get 4
          i32.const 2
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 7
          local.get 14
          i32.load16_u
          local.tee 17
          i32.eq
          br_if 0 (;@3;)
          local.get 2
          local.get 17
          i32.store offset=264
          local.get 2
          local.get 7
          i32.store offset=260
          local.get 2
          local.get 5
          i32.store offset=256
          global.get $__memory_base
          i32.const 825
          i32.add
          local.get 2
          i32.const 256
          i32.add
          call $printf
          drop
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 2
          i32.load offset=336
          local.set 4
        end
        block  ;; label = @3
          local.get 4
          i32.const 4
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 13
          i32.load16_u
          local.tee 4
          i32.eq
          br_if 0 (;@3;)
          local.get 2
          local.get 4
          i32.store offset=248
          local.get 2
          local.get 3
          i32.store offset=244
          local.get 2
          local.get 5
          i32.store offset=240
          global.get $__memory_base
          i32.const 921
          i32.add
          local.get 2
          i32.const 240
          i32.add
          call $printf
          drop
          local.get 0
          i32.const 1
          i32.add
          local.set 0
        end
        local.get 0
        local.get 6
        i32.add
        local.set 6
        global.get $default_num_contexts
        i32.load
        local.get 1
        i32.const 1
        i32.add
        local.tee 1
        i32.const 65535
        i32.and
        local.tee 5
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    local.get 2
    local.get 11
    i32.store offset=224
    global.get $__memory_base
    local.tee 4
    i32.const 1108
    i32.add
    local.get 2
    i32.const 224
    i32.add
    call $printf
    drop
    local.get 2
    local.get 9
    i64.store32 offset=208
    local.get 4
    i32.const 1132
    i32.add
    local.get 2
    i32.const 208
    i32.add
    call $printf
    drop
    local.get 2
    local.get 9
    f64.convert_i64_s
    f64.const 0x1.f4p+9 (;=1000;)
    f64.div
    local.tee 8
    f64.store offset=192
    local.get 4
    i32.const 1249
    i32.add
    local.get 2
    i32.const 192
    i32.add
    call $printf
    drop
    block  ;; label = @1
      local.get 8
      f64.const 0x0p+0 (;=0;)
      f64.gt
      i32.eqz
      br_if 0 (;@1;)
      global.get $default_num_contexts
      local.set 4
      local.get 2
      local.get 2
      i32.load offset=332
      local.get 4
      i32.load
      i32.mul
      f64.convert_i32_u
      local.get 8
      f64.div
      f64.store offset=176
      global.get $__memory_base
      i32.const 1272
      i32.add
      local.get 2
      i32.const 176
      i32.add
      call $printf
      drop
    end
    block  ;; label = @1
      local.get 8
      f64.const 0x1.4p+3 (;=10;)
      f64.lt
      i32.eqz
      br_if 0 (;@1;)
      global.get $__memory_base
      i32.const 764
      i32.add
      call $puts
      drop
      local.get 6
      i32.const 1
      i32.add
      local.set 6
    end
    global.get $default_num_contexts
    local.set 0
    local.get 2
    local.get 2
    i32.load offset=332
    local.tee 3
    local.get 0
    i32.load
    i32.mul
    i32.store offset=160
    global.get $__memory_base
    local.tee 4
    i32.const 1156
    i32.add
    local.get 2
    i32.const 160
    i32.add
    call $printf
    drop
    local.get 2
    local.get 4
    i32.const 671
    i32.add
    i32.store offset=144
    local.get 4
    i32.const 1180
    i32.add
    local.get 2
    i32.const 144
    i32.add
    call $printf
    drop
    local.get 2
    local.get 4
    i32.const 61
    i32.add
    i32.store offset=128
    local.get 4
    i32.const 1226
    i32.add
    local.get 2
    i32.const 128
    i32.add
    call $printf
    drop
    local.get 2
    local.get 4
    i32.const 592
    i32.add
    i32.store offset=112
    local.get 4
    i32.const 1203
    i32.add
    local.get 2
    i32.const 112
    i32.add
    call $printf
    drop
    local.get 2
    local.get 12
    i32.store offset=96
    local.get 4
    i32.const 1081
    i32.add
    local.get 2
    i32.const 96
    i32.add
    call $printf
    drop
    local.get 0
    i32.load
    local.set 4
    block  ;; label = @1
      local.get 2
      i32.load offset=336
      local.tee 0
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 0
      local.get 2
      i32.load16_u offset=362
      local.set 5
      i32.const 0
      local.set 1
      loop  ;; label = @2
        local.get 2
        local.get 5
        i32.store offset=84
        local.get 2
        local.get 0
        i32.store offset=80
        global.get $__memory_base
        i32.const 1053
        i32.add
        local.get 2
        i32.const 80
        i32.add
        call $printf
        drop
        global.get $default_num_contexts
        i32.load
        local.tee 4
        local.get 1
        i32.const 1
        i32.add
        local.tee 1
        i32.const 65535
        i32.and
        local.tee 0
        i32.gt_u
        br_if 0 (;@2;)
      end
      local.get 2
      i32.load offset=336
      local.set 0
    end
    block  ;; label = @1
      local.get 0
      i32.const 2
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 0
      local.get 2
      i32.load16_u offset=364
      local.set 5
      i32.const 0
      local.set 1
      loop  ;; label = @2
        local.get 2
        local.get 5
        i32.store offset=68
        local.get 2
        local.get 0
        i32.store offset=64
        global.get $__memory_base
        i32.const 969
        i32.add
        local.get 2
        i32.const 64
        i32.add
        call $printf
        drop
        global.get $default_num_contexts
        i32.load
        local.tee 4
        local.get 1
        i32.const 1
        i32.add
        local.tee 1
        i32.const 65535
        i32.and
        local.tee 0
        i32.gt_u
        br_if 0 (;@2;)
      end
      local.get 2
      i32.load offset=336
      local.set 0
    end
    block  ;; label = @1
      local.get 0
      i32.const 4
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 0
      local.get 2
      i32.load16_u offset=366
      local.set 5
      i32.const 0
      local.set 1
      loop  ;; label = @2
        local.get 2
        local.get 5
        i32.store offset=52
        local.get 2
        local.get 0
        i32.store offset=48
        global.get $__memory_base
        i32.const 1025
        i32.add
        local.get 2
        i32.const 48
        i32.add
        call $printf
        drop
        global.get $default_num_contexts
        i32.load
        local.tee 4
        local.get 1
        i32.const 1
        i32.add
        local.tee 1
        i32.const 65535
        i32.and
        local.tee 0
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 4
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 4
      local.get 2
      i32.load16_u offset=360
      local.set 1
      i32.const 0
      local.set 0
      loop  ;; label = @2
        local.get 2
        local.get 1
        i32.store offset=36
        local.get 2
        local.get 4
        i32.store offset=32
        global.get $__memory_base
        i32.const 997
        i32.add
        local.get 2
        i32.const 32
        i32.add
        call $printf
        drop
        global.get $default_num_contexts
        i32.load
        local.get 0
        i32.const 1
        i32.add
        local.tee 0
        i32.const 65535
        i32.and
        local.tee 4
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 65535
        i32.and
        br_if 0 (;@2;)
        global.get $__memory_base
        i32.const 200
        i32.add
        call $puts
        drop
        local.get 10
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        global.get $__memory_base
        local.tee 4
        i32.const 671
        i32.add
        i32.store offset=24
        local.get 2
        local.get 4
        i32.const 61
        i32.add
        i32.store offset=28
        local.get 2
        local.get 3
        global.get $default_num_contexts
        i32.load
        i32.mul
        f64.convert_i32_u
        local.get 8
        f64.div
        f64.store offset=16
        local.get 4
        i32.const 15
        i32.add
        local.get 2
        i32.const 16
        i32.add
        call $printf
        drop
        local.get 2
        local.get 4
        i32.const 56
        i32.add
        i32.store
        local.get 4
        i32.const 41
        i32.add
        local.get 2
        call $printf
        drop
        i32.const 10
        call $putchar
        drop
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 6
        i32.extend16_s
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        global.get $__memory_base
        i32.const 74
        i32.add
        call $puts
        drop
        br 1 (;@1;)
      end
      global.get $__memory_base
      i32.const 272
      i32.add
      call $puts
      drop
    end
    local.get 2
    i32.load offset=312
    call $free
    local.get 2
    i32.const 384
    i32.add
    global.set $__stack_pointer
    i32.const 0)
  (func $parseval (type 2) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 0
        i32.load8_u
        local.tee 1
        i32.const 45
        i32.eq
        local.tee 2
        i32.add
        local.tee 3
        i32.load8_u
        local.tee 4
        i32.const 48
        i32.ne
        br_if 0 (;@2;)
        local.get 3
        local.get 3
        i32.load8_u offset=1
        local.tee 5
        i32.const 120
        i32.eq
        i32.const 1
        i32.shl
        local.tee 6
        i32.add
        local.tee 3
        i32.load8_u
        local.set 4
        local.get 5
        i32.const 120
        i32.ne
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 4
          i32.const -48
          i32.add
          i32.const 255
          i32.and
          i32.const 10
          i32.lt_u
          br_if 0 (;@3;)
          i32.const 0
          local.set 5
          local.get 4
          i32.const -97
          i32.add
          i32.const 255
          i32.and
          i32.const 5
          i32.gt_u
          br_if 2 (;@1;)
        end
        local.get 6
        local.get 2
        i32.add
        local.get 0
        i32.add
        i32.const 1
        i32.add
        local.set 0
        i32.const 0
        local.set 5
        loop  ;; label = @3
          local.get 5
          i32.const 4
          i32.shl
          local.get 4
          i32.const 255
          i32.and
          local.tee 4
          i32.add
          i32.const -87
          i32.const -48
          local.get 4
          i32.const 57
          i32.gt_u
          select
          i32.add
          local.set 5
          local.get 0
          i32.load8_u
          local.tee 4
          i32.const -97
          i32.add
          local.set 3
          local.get 0
          i32.const 1
          i32.add
          local.tee 2
          local.set 0
          local.get 4
          i32.const -48
          i32.add
          i32.const 255
          i32.and
          i32.const 10
          i32.lt_u
          br_if 0 (;@3;)
          local.get 2
          local.set 0
          local.get 3
          i32.const 255
          i32.and
          i32.const 6
          i32.lt_u
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      i32.const 0
      local.set 5
      local.get 4
      i32.const -48
      i32.add
      i32.const 255
      i32.and
      i32.const 9
      i32.gt_u
      br_if 0 (;@1;)
      local.get 3
      i32.const 1
      i32.add
      local.set 0
      i32.const 0
      local.set 5
      loop  ;; label = @2
        local.get 5
        i32.const 10
        i32.mul
        local.get 4
        i32.const 255
        i32.and
        i32.add
        i32.const -48
        i32.add
        local.set 5
        local.get 0
        i32.load8_u
        local.set 4
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 4
        i32.const -48
        i32.add
        i32.const 255
        i32.and
        i32.const 10
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    i32.const 0
    local.get 5
    i32.const 10
    i32.shl
    local.get 5
    local.get 4
    i32.const 255
    i32.and
    local.tee 4
    i32.const 75
    i32.eq
    select
    local.tee 0
    i32.const 20
    i32.shl
    local.get 0
    local.get 4
    i32.const 77
    i32.eq
    select
    local.tee 4
    i32.sub
    local.get 4
    local.get 1
    i32.const 45
    i32.eq
    select)
  (func $core_init_matrix (type 8) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.eqz
          br_if 0 (;@3;)
          i32.const -1
          local.set 4
          i32.const 8
          local.set 5
          loop  ;; label = @4
            local.get 5
            local.get 4
            i32.const 2
            i32.add
            i32.mul
            local.set 6
            local.get 5
            i32.const 8
            i32.add
            local.set 5
            local.get 4
            i32.const 1
            i32.add
            local.tee 7
            local.set 4
            local.get 6
            local.get 0
            i32.lt_u
            br_if 0 (;@4;)
          end
          local.get 1
          i32.const -1
          i32.add
          i32.const -4
          i32.and
          i32.const 4
          i32.add
          local.tee 8
          local.get 7
          local.get 7
          i32.mul
          local.tee 9
          i32.const 1
          i32.shl
          i32.add
          local.set 10
          local.get 7
          br_if 1 (;@2;)
          i32.const 0
          local.set 9
          i32.const 0
          local.set 7
          br 2 (;@1;)
        end
        i32.const -1
        local.set 7
        local.get 1
        i32.const -1
        i32.add
        i32.const -4
        i32.and
        local.tee 4
        i32.const 6
        i32.add
        local.set 10
        local.get 4
        i32.const 4
        i32.add
        local.set 8
        i32.const 1
        local.set 9
      end
      local.get 2
      i32.const 1
      local.get 2
      select
      local.set 0
      local.get 7
      i32.const 1
      i32.shl
      local.set 11
      i32.const 0
      local.set 12
      i32.const 0
      local.set 13
      i32.const 1
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.const 1
        i32.shl
        local.set 6
        local.get 12
        local.set 4
        i32.const 0
        local.set 5
        loop  ;; label = @3
          local.get 10
          local.get 4
          i32.add
          local.get 1
          local.get 5
          i32.add
          local.tee 2
          local.get 0
          local.get 2
          i32.mul
          i32.const 65536
          i32.rem_s
          local.tee 0
          i32.add
          i32.store16
          local.get 8
          local.get 4
          i32.add
          local.get 6
          local.get 0
          i32.add
          i32.const 255
          i32.and
          i32.store16
          local.get 6
          i32.const 2
          i32.add
          local.set 6
          local.get 4
          i32.const 2
          i32.add
          local.set 4
          local.get 7
          local.get 5
          i32.const 1
          i32.add
          local.tee 5
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 1
        local.get 5
        i32.add
        local.set 1
        local.get 12
        local.get 11
        i32.add
        local.set 12
        local.get 13
        i32.const 1
        i32.add
        local.tee 13
        local.get 7
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 3
    local.get 10
    i32.store offset=8
    local.get 3
    local.get 8
    i32.store offset=4
    local.get 3
    local.get 7
    i32.store
    local.get 3
    local.get 10
    local.get 9
    i32.const 1
    i32.shl
    i32.add
    i32.const -1
    i32.add
    i32.const -4
    i32.and
    i32.const 4
    i32.add
    i32.store offset=12
    local.get 7)
  (func $core_init_state (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    i32.const 0
    local.set 3
    block  ;; label = @1
      local.get 0
      i32.const -1
      i32.add
      local.tee 4
      i32.const 2
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      local.set 5
      i32.const 0
      local.set 6
      i32.const 0
      local.set 3
      loop  ;; label = @2
        block  ;; label = @3
          local.get 6
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.add
          local.tee 7
          local.set 8
          local.get 6
          local.set 9
          loop  ;; label = @4
            local.get 8
            local.get 5
            i32.load8_u
            i32.store8
            local.get 5
            i32.const 1
            i32.add
            local.set 5
            local.get 8
            i32.const 1
            i32.add
            local.set 8
            local.get 9
            i32.const -1
            i32.add
            local.tee 9
            br_if 0 (;@4;)
          end
          local.get 7
          local.get 6
          i32.add
          i32.const 44
          i32.store8
          local.get 3
          local.get 6
          i32.add
          i32.const 1
          i32.add
          local.set 3
        end
        global.get $__memory_base
        local.tee 8
        i32.const 1424
        i32.add
        local.get 1
        i32.const 1
        i32.add
        local.tee 1
        i32.const 7
        i32.and
        i32.const 2
        i32.shl
        local.tee 9
        i32.add
        i32.load
        local.get 1
        i32.const 1
        i32.shr_u
        i32.const 12
        i32.and
        i32.add
        i32.load
        local.set 5
        local.get 3
        local.get 8
        i32.const 1328
        i32.add
        local.get 9
        i32.add
        i32.load
        local.tee 6
        i32.add
        i32.const 1
        i32.add
        local.get 4
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 3
      local.get 0
      i32.ge_u
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      i32.add
      i32.const 0
      local.get 0
      local.get 3
      i32.sub
      call $memset
      drop
    end)
  (func $core_bench_matrix (type 0) (param i32 i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=12
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    local.get 1
    call $matrix_test
    i32.const 65535
    i32.and
    local.get 2
    call $crcu16)
  (func $matrix_sum (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        i32.const 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      i32.const 2
      i32.shl
      local.set 4
      i32.const 0
      local.set 5
      i32.const 0
      local.set 3
      i32.const 0
      local.set 6
      i32.const 0
      local.set 7
      loop  ;; label = @2
        local.get 1
        local.set 8
        local.get 0
        local.set 9
        loop  ;; label = @3
          i32.const 0
          local.get 8
          i32.load
          local.tee 10
          local.get 7
          i32.add
          local.tee 7
          local.get 7
          local.get 2
          i32.gt_s
          local.tee 11
          select
          local.set 7
          i32.const 10
          local.get 10
          local.get 6
          i32.gt_s
          local.get 11
          select
          local.get 3
          i32.add
          local.set 3
          local.get 8
          i32.const 4
          i32.add
          local.set 8
          local.get 10
          local.set 6
          local.get 9
          i32.const -1
          i32.add
          local.tee 9
          br_if 0 (;@3;)
        end
        local.get 1
        local.get 4
        i32.add
        local.set 1
        local.get 10
        local.set 6
        local.get 5
        i32.const 1
        i32.add
        local.tee 5
        local.get 0
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 3
    i32.extend16_s)
  (func $matrix_mul_matrix (type 10) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 1
      i32.shl
      local.set 4
      i32.const 0
      local.set 5
      loop  ;; label = @2
        local.get 5
        local.get 0
        i32.mul
        local.set 6
        local.get 3
        local.set 7
        i32.const 0
        local.set 8
        loop  ;; label = @3
          local.get 8
          local.get 6
          i32.add
          local.set 9
          i32.const 0
          local.set 10
          local.get 2
          local.set 11
          local.get 7
          local.set 12
          local.get 0
          local.set 13
          loop  ;; label = @4
            local.get 12
            i32.load16_s
            local.get 11
            i32.load16_s
            i32.mul
            local.get 10
            i32.add
            local.set 10
            local.get 11
            i32.const 2
            i32.add
            local.set 11
            local.get 12
            local.get 4
            i32.add
            local.set 12
            local.get 13
            i32.const -1
            i32.add
            local.tee 13
            br_if 0 (;@4;)
          end
          local.get 1
          local.get 9
          i32.const 2
          i32.shl
          i32.add
          local.get 10
          i32.store
          local.get 7
          i32.const 2
          i32.add
          local.set 7
          local.get 8
          i32.const 1
          i32.add
          local.tee 8
          local.get 0
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 2
        local.get 4
        i32.add
        local.set 2
        local.get 5
        i32.const 1
        i32.add
        local.tee 5
        local.get 0
        i32.ne
        br_if 0 (;@2;)
      end
    end)
  (func $matrix_mul_matrix_bitextract (type 10) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 1
      i32.shl
      local.set 4
      i32.const 0
      local.set 5
      loop  ;; label = @2
        local.get 5
        local.get 0
        i32.mul
        local.set 6
        local.get 3
        local.set 7
        i32.const 0
        local.set 8
        loop  ;; label = @3
          local.get 8
          local.get 6
          i32.add
          local.set 9
          i32.const 0
          local.set 10
          local.get 2
          local.set 11
          local.get 7
          local.set 12
          local.get 0
          local.set 13
          loop  ;; label = @4
            local.get 12
            i32.load16_u
            local.get 11
            i32.load16_u
            i32.mul
            local.tee 14
            i32.const 2
            i32.shr_u
            i32.const 15
            i32.and
            local.get 14
            i32.const 5
            i32.shr_u
            i32.const 127
            i32.and
            i32.mul
            local.get 10
            i32.add
            local.set 10
            local.get 11
            i32.const 2
            i32.add
            local.set 11
            local.get 12
            local.get 4
            i32.add
            local.set 12
            local.get 13
            i32.const -1
            i32.add
            local.tee 13
            br_if 0 (;@4;)
          end
          local.get 1
          local.get 9
          i32.const 2
          i32.shl
          i32.add
          local.get 10
          i32.store
          local.get 7
          i32.const 2
          i32.add
          local.set 7
          local.get 8
          i32.const 1
          i32.add
          local.tee 8
          local.get 0
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 2
        local.get 4
        i32.add
        local.set 2
        local.get 5
        i32.const 1
        i32.add
        local.tee 5
        local.get 0
        i32.ne
        br_if 0 (;@2;)
      end
    end)
  (func $matrix_add_const (type 9) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 1
      i32.shl
      local.set 3
      i32.const 0
      local.set 4
      loop  ;; label = @2
        local.get 1
        local.set 5
        local.get 0
        local.set 6
        loop  ;; label = @3
          local.get 5
          local.get 5
          i32.load16_u
          local.get 2
          i32.add
          i32.store16
          local.get 5
          i32.const 2
          i32.add
          local.set 5
          local.get 6
          i32.const -1
          i32.add
          local.tee 6
          br_if 0 (;@3;)
        end
        local.get 1
        local.get 3
        i32.add
        local.set 1
        local.get 4
        i32.const 1
        i32.add
        local.tee 4
        local.get 0
        i32.ne
        br_if 0 (;@2;)
      end
    end)
  (func $matrix_mul_const (type 10) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 1
      i32.shl
      local.set 4
      local.get 0
      i32.const 2
      i32.shl
      local.set 5
      i32.const 0
      local.set 6
      loop  ;; label = @2
        local.get 2
        local.set 7
        local.get 1
        local.set 8
        local.get 0
        local.set 9
        loop  ;; label = @3
          local.get 8
          local.get 7
          i32.load16_s
          local.get 3
          i32.mul
          i32.store
          local.get 7
          i32.const 2
          i32.add
          local.set 7
          local.get 8
          i32.const 4
          i32.add
          local.set 8
          local.get 9
          i32.const -1
          i32.add
          local.tee 9
          br_if 0 (;@3;)
        end
        local.get 2
        local.get 4
        i32.add
        local.set 2
        local.get 1
        local.get 5
        i32.add
        local.set 1
        local.get 6
        i32.const 1
        i32.add
        local.tee 6
        local.get 0
        i32.ne
        br_if 0 (;@2;)
      end
    end)
  (func $matrix_mul_vect (type 10) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 1
      i32.shl
      local.set 4
      i32.const 0
      local.set 5
      loop  ;; label = @2
        local.get 2
        local.set 6
        local.get 3
        local.set 7
        local.get 0
        local.set 8
        i32.const 0
        local.set 9
        loop  ;; label = @3
          local.get 7
          i32.load16_s
          local.get 6
          i32.load16_s
          i32.mul
          local.get 9
          i32.add
          local.set 9
          local.get 6
          i32.const 2
          i32.add
          local.set 6
          local.get 7
          i32.const 2
          i32.add
          local.set 7
          local.get 8
          i32.const -1
          i32.add
          local.tee 8
          br_if 0 (;@3;)
        end
        local.get 1
        local.get 5
        i32.const 2
        i32.shl
        i32.add
        local.get 9
        i32.store
        local.get 2
        local.get 4
        i32.add
        local.set 2
        local.get 5
        i32.const 1
        i32.add
        local.tee 5
        local.get 0
        i32.ne
        br_if 0 (;@2;)
      end
    end)
  (func $core_state_transition (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 2
        i32.load8_u
        local.tee 3
        br_if 0 (;@2;)
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      local.get 2
      i32.const 1
      i32.add
      local.set 2
      local.get 1
      i32.const 8
      i32.add
      local.set 5
      local.get 1
      i32.const 16
      i32.add
      local.set 6
      local.get 1
      i32.const 20
      i32.add
      local.set 7
      local.get 1
      i32.const 12
      i32.add
      local.set 8
      local.get 1
      i32.const 24
      i32.add
      local.set 9
      local.get 1
      i32.const 4
      i32.add
      local.set 10
      i32.const 0
      local.set 4
      loop  ;; label = @2
        local.get 3
        i32.const 255
        i32.and
        local.tee 11
        i32.const 44
        i32.eq
        br_if 1 (;@1;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 4
                                br_table 0 (;@14;) 11 (;@3;) 1 (;@13;) 4 (;@10;) 2 (;@12;) 3 (;@11;) 5 (;@9;) 6 (;@8;) 11 (;@3;)
                              end
                              i32.const 4
                              local.set 4
                              local.get 1
                              local.set 12
                              local.get 3
                              i32.const -58
                              i32.add
                              i32.const 255
                              i32.and
                              i32.const 245
                              i32.gt_u
                              br_if 9 (;@4;)
                              i32.const 2
                              local.set 4
                              local.get 1
                              local.set 12
                              block  ;; label = @14
                                local.get 11
                                i32.const -43
                                i32.add
                                br_table 10 (;@4;) 0 (;@14;) 10 (;@4;) 8 (;@6;) 0 (;@14;)
                              end
                              i32.const 1
                              local.set 4
                              local.get 10
                              local.get 10
                              i32.load
                              i32.const 1
                              i32.add
                              i32.store
                              br 8 (;@5;)
                            end
                            i32.const 4
                            local.set 4
                            local.get 5
                            local.set 12
                            local.get 3
                            i32.const -58
                            i32.add
                            i32.const 255
                            i32.and
                            i32.const 245
                            i32.gt_u
                            br_if 8 (;@4;)
                            i32.const 5
                            local.set 4
                            local.get 5
                            local.set 12
                            local.get 11
                            i32.const 46
                            i32.eq
                            br_if 8 (;@4;)
                            local.get 5
                            local.set 8
                            br 5 (;@7;)
                          end
                          i32.const 5
                          local.set 4
                          local.get 6
                          local.set 12
                          local.get 11
                          i32.const 46
                          i32.eq
                          br_if 7 (;@4;)
                          i32.const 4
                          local.set 4
                          local.get 3
                          i32.const -58
                          i32.add
                          i32.const 255
                          i32.and
                          i32.const 246
                          i32.ge_u
                          br_if 8 (;@3;)
                          local.get 6
                          local.set 8
                          br 4 (;@7;)
                        end
                        i32.const 3
                        local.set 4
                        local.get 7
                        local.set 12
                        local.get 3
                        i32.const 223
                        i32.and
                        i32.const 69
                        i32.eq
                        br_if 6 (;@4;)
                        i32.const 5
                        local.set 4
                        local.get 3
                        i32.const -58
                        i32.add
                        i32.const 255
                        i32.and
                        i32.const 246
                        i32.ge_u
                        br_if 7 (;@3;)
                        local.get 7
                        local.set 8
                        br 3 (;@7;)
                      end
                      i32.const 6
                      local.set 4
                      local.get 8
                      local.set 12
                      local.get 11
                      i32.const -43
                      i32.add
                      br_table 5 (;@4;) 2 (;@7;) 5 (;@4;) 2 (;@7;)
                    end
                    i32.const 7
                    local.set 4
                    local.get 9
                    local.set 12
                    local.get 3
                    i32.const -58
                    i32.add
                    i32.const 255
                    i32.and
                    i32.const 246
                    i32.ge_u
                    br_if 4 (;@4;)
                    local.get 9
                    local.set 8
                    br 1 (;@7;)
                  end
                  i32.const 7
                  local.set 4
                  local.get 3
                  i32.const -58
                  i32.add
                  i32.const 255
                  i32.and
                  i32.const 245
                  i32.gt_u
                  br_if 4 (;@3;)
                  local.get 10
                  local.set 8
                end
                i32.const 1
                local.set 4
                local.get 8
                local.get 8
                i32.load
                i32.const 1
                i32.add
                i32.store
                br 5 (;@1;)
              end
              i32.const 5
              local.set 4
            end
            local.get 1
            local.set 12
          end
          local.get 12
          local.get 12
          i32.load
          i32.const 1
          i32.add
          i32.store
        end
        local.get 2
        i32.const 1
        i32.add
        local.set 12
        block  ;; label = @3
          local.get 2
          i32.load8_u
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 12
          local.set 2
          local.get 4
          i32.const 1
          i32.ne
          br_if 1 (;@2;)
        end
      end
      local.get 12
      i32.const -1
      i32.add
      local.set 2
    end
    local.get 0
    local.get 2
    i32.store
    local.get 4)
  (func $get_seed_args (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    i32.const 0
    local.set 3
    block  ;; label = @1
      local.get 1
      local.get 0
      i32.le_s
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      i32.const 2
      i32.shl
      i32.add
      i32.load
      call $parseval
      local.set 3
    end
    local.get 3)
  (func $crcu8 (type 1) (param i32 i32) (result i32)
    (local i32 i32)
    i32.const 0
    local.set 2
    loop  ;; label = @1
      local.get 1
      i32.const 1
      i32.shr_u
      i32.const 32767
      i32.and
      local.tee 3
      i32.const -24575
      i32.xor
      local.get 3
      local.get 0
      local.get 1
      i32.xor
      i32.const 1
      i32.and
      select
      local.set 1
      local.get 0
      i32.const 254
      i32.and
      i32.const 1
      i32.shr_u
      local.set 0
      local.get 2
      i32.const 255
      i32.and
      local.set 3
      local.get 2
      i32.const 1
      i32.add
      local.set 2
      local.get 3
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
    end
    local.get 1
    i32.const 65535
    i32.and)
  (func $crcu32 (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.const 16
    i32.shr_u
    local.get 0
    i32.const 65535
    i32.and
    local.get 1
    call $crcu16
    call $crcu16)
  (func $crc16 (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.const 65535
    i32.and
    local.get 1
    call $crcu16)
  (func $check_data_types (type 11) (result i32)
    i32.const 0)
  (func $portable_malloc (type 2) (param i32) (result i32)
    local.get 0
    call $malloc)
  (func $portable_free (type 3) (param i32)
    local.get 0
    call $free)
  (func $start_time (type 4)
    (local i32)
    global.get $__memory_base
    local.set 0
    global.get $_CLOCK_REALTIME
    local.get 0
    i32.const 1464
    i32.add
    call $clock_gettime
    drop)
  (func $stop_time (type 4)
    (local i32)
    global.get $__memory_base
    local.set 0
    global.get $_CLOCK_REALTIME
    local.get 0
    i32.const 1480
    i32.add
    call $clock_gettime
    drop)
  (func $get_time (type 12) (result i64)
    (local i32 i32)
    global.get $__memory_base
    local.tee 0
    i32.const 1480
    i32.add
    local.tee 1
    i64.load
    local.get 0
    i32.const 1464
    i32.add
    local.tee 0
    i64.load
    i64.sub
    i64.const 1000
    i64.mul
    local.get 1
    i32.load offset=8
    local.get 0
    i32.load offset=8
    i32.sub
    i32.const 1000000
    i32.div_s
    i64.extend_i32_s
    i64.add)
  (func $time_in_secs (type 13) (param i64) (result f64)
    local.get 0
    f64.convert_i64_s
    f64.const 0x1.f4p+9 (;=1000;)
    f64.div)
  (func $portable_init (type 9) (param i32 i32 i32)
    local.get 0
    i32.const 1
    i32.store8)
  (func $portable_fini (type 3) (param i32)
    local.get 0
    i32.const 0
    i32.store8)
  (func $_start (type 4)
    block  ;; label = @1
      global.get $__memory_base
      i32.const 1496
      i32.add
      i32.load
      i32.eqz
      br_if 0 (;@1;)
      unreachable
      unreachable
    end
    global.get $__memory_base
    i32.const 1496
    i32.add
    i32.const 1
    i32.store
    call $__wasm_call_ctors
    call $__main_void
    drop
    call $__wasm_call_dtors)
  (func $__main_void (type 11) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 8
              i32.add
              local.get 0
              i32.const 12
              i32.add
              call $__wasi_args_sizes_get
              br_if 0 (;@5;)
              local.get 0
              i32.load offset=8
              i32.const 1
              i32.add
              local.tee 1
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              i32.load offset=12
              call $malloc
              local.tee 2
              i32.eqz
              br_if 2 (;@3;)
              local.get 1
              i32.const 4
              call $calloc
              local.tee 1
              i32.eqz
              br_if 3 (;@2;)
              local.get 1
              local.get 2
              call $__wasi_args_get
              br_if 4 (;@1;)
              local.get 0
              i32.load offset=8
              local.get 1
              call $main
              drop
              local.get 0
              i32.const 16
              i32.add
              global.set $__stack_pointer
              i32.const 0
              return
            end
            i32.const 71
            call $_Exit
            unreachable
          end
          i32.const 70
          call $_Exit
          unreachable
        end
        i32.const 70
        call $_Exit
        unreachable
      end
      local.get 2
      call $free
      i32.const 70
      call $_Exit
      unreachable
    end
    local.get 2
    call $free
    local.get 1
    call $free
    i32.const 71
    call $_Exit
    unreachable)
  (global (;5;) i32 (i32.const 1456))
  (export "__wasm_call_ctors" (func $__wasm_call_ctors))
  (export "__wasm_apply_data_relocs" (func $__wasm_apply_data_relocs))
  (export "calc_func" (func $calc_func))
  (export "core_bench_state" (func $core_bench_state))
  (export "core_bench_matrix" (func $core_bench_matrix))
  (export "crcu16" (func $crcu16))
  (export "cmp_complex" (func $cmp_complex))
  (export "cmp_idx" (func $cmp_idx))
  (export "copy_info" (func $copy_info))
  (export "core_bench_list" (func $core_bench_list))
  (export "core_list_find" (func $core_list_find))
  (export "core_list_reverse" (func $core_list_reverse))
  (export "core_list_mergesort_cmp_complex" (func $core_list_mergesort_cmp_complex))
  (export "core_list_remove" (func $core_list_remove))
  (export "crc16" (func $crc16))
  (export "core_list_undo_remove" (func $core_list_undo_remove))
  (export "core_list_mergesort_cmp_idx" (func $core_list_mergesort_cmp_idx))
  (export "core_list_init" (func $core_list_init))
  (export "core_list_insert_new" (func $core_list_insert_new))
  (export "core_list_mergesort" (func $core_list_mergesort))
  (export "iterate" (func $iterate))
  (export "__main_argc_argv" (func $main))
  (export "portable_init" (func $portable_init))
  (export "get_seed_args" (func $get_seed_args))
  (export "portable_malloc" (func $portable_malloc))
  (export "core_init_matrix" (func $core_init_matrix))
  (export "core_init_state" (func $core_init_state))
  (export "start_time" (func $start_time))
  (export "stop_time" (func $stop_time))
  (export "time_in_secs" (func $time_in_secs))
  (export "get_time" (func $get_time))
  (export "check_data_types" (func $check_data_types))
  (export "portable_free" (func $portable_free))
  (export "portable_fini" (func $portable_fini))
  (export "default_num_contexts" (global 5))
  (export "matrix_test" (func $matrix_test))
  (export "matrix_add_const" (func $matrix_add_const))
  (export "matrix_mul_const" (func $matrix_mul_const))
  (export "matrix_sum" (func $matrix_sum))
  (export "matrix_mul_vect" (func $matrix_mul_vect))
  (export "matrix_mul_matrix" (func $matrix_mul_matrix))
  (export "matrix_mul_matrix_bitextract" (func $matrix_mul_matrix_bitextract))
  (export "core_state_transition" (func $core_state_transition))
  (export "crcu32" (func $crcu32))
  (export "parseval" (func $parseval))
  (export "crcu8" (func $crcu8))
  (export "__main_void" (func $__main_void))
  (export "_start" (func $_start))
  (data $.data (global.get $__memory_base) "1T3.4e4z\00%d,%s\00CoreMark 1.0 : %f / %s %s\00 / %s\00-T.T++Tq\00Heap\00-Os -g -ftlo\00Errors detected\0034.0e-T^\00T0.3e-1F\00-874\001234\005.500e+3\00-87e+832\00+122\005012\00+0.6e-12\00-.123e-2\00-110.700\00.1234500\00+0.64400\0035.54400\00Correct operation validated. See README.md for run and reporting rules.\00Cannot validate operation for these seed values, please compare with results on a known platform.\00Profile generation run parameters for coremark.\006k validation run parameters for coremark.\002K validation run parameters for coremark.\006k performance run parameters for coremark.\002K performance run parameters for coremark.\00Please put data memory location here\0a\09\09\09(e.g. code in flash, data on heap etc)\00Clang 16.0.0 (https://github.com/llvm/llvm-project 08d094a0e457360ad8b94b017d2dc277e697ca76)\00ERROR! Must execute for at least 10 secs for a valid result!\00[%u]ERROR! matrix crc 0x%04x - should be 0x%04x\0a\00[%u]ERROR! list crc 0x%04x - should be 0x%04x\0a\00[%u]ERROR! state crc 0x%04x - should be 0x%04x\0a\00[%d]crcmatrix     : 0x%04x\0a\00[%d]crcfinal      : 0x%04x\0a\00[%d]crcstate      : 0x%04x\0a\00[%d]crclist       : 0x%04x\0a\00seedcrc          : 0x%04x\0a\00CoreMark Size    : %lu\0a\00Total ticks      : %lu\0a\00Iterations       : %lu\0a\00Compiler version : %s\0a\00Memory location  : %s\0a\00Compiler flags   : %s\0a\00Total time (secs): %f\0a\00Iterations/Sec   : %f\0a\00\00\b0\d4@3yj\14\e7\c1\e3R\be\99\11\08V\d7\1fG\07G^\bf9\a4\e5:\8e\84\8d\00\00\04\00\00\00\04\00\00\00\04\00\00\00\08\00\00\00\08\00\00\00\08\00\00\00\08\00\00\00\08\00\00\00\8d\00\00\00q\00\00\00l\00\00\00\88\00\00\00\bf\00\00\00\ad\00\00\00\a4\00\00\00\b6\00\00\00v\00\00\00\9b\00\00\00\7f\00\00\00\92\00\00\00c\00\00\00/\00\00\00\00\00\00\00Z\00\00\00P\05\00\00P\05\00\00P\05\00\00`\05\00\00`\05\00\00p\05\00\00p\05\00\00\80\05\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))

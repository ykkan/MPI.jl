# Compile-time constants

# Implementation limits:
const MPI_MAX_DATAREP_STRING = Cint(128)
const MPI_MAX_ERROR_STRING = Cint(512)
const MPI_MAX_INFO_KEY = Cint(255)
const MPI_MAX_INFO_VAL = Cint(1024)
const MPI_MAX_LIBRARY_VERSION_STRING = Cint(8192)
const MPI_MAX_OBJECT_NAME = Cint(128)
const MPI_MAX_PORT_NAME = Cint(256)
const MPI_MAX_PROCESSOR_NAME = Cint(128)

# Types

# Various (signed) integer types:
const MPI_Aint = Int
const MPI_Fint = Int32
const MPI_Count = Int64
const MPI_Offset = Int64

# Status:
struct MPI_Status
    _private0::Cint
    _private1::Cint
    MPI_SOURCE::Cint
    MPI_TAG::Cint
    MPI_ERROR::Cint
end

# Opaque handles:
const MPI_Comm = Cint
const MPI_Datatype = Cint
const MPI_Errhandler = Cint
const MPI_File = Ptr{Cvoid}
const MPI_Group = Cint
const MPI_Info = Cint
const MPI_Message = Cint
const MPI_Op = Cint
const MPI_Request = Cint
const MPI_Win = Cint

# Function prototypes:
const MPI_Comm_copy_attr_function = Cvoid
const MPI_Comm_delete_attr_function = Cvoid
const MPI_Comm_errhandler_function = Cvoid
const MPI_Comm_errhandler_fn = MPI_Comm_errhandler_function
const MPI_Copy_function = MPI_Comm_copy_attr_function
const MPI_Datarep_conversion_function = Cvoid
const MPI_Datarep_extent_function = Cvoid
const MPI_Delete_function = Cvoid
const MPI_File_errhandler_function = Cvoid
const MPI_File_errhandler_fn = Cvoid
const MPI_Grequest_cancel_function = Cvoid
const MPI_Grequest_free_function = Cvoid
const MPI_Grequest_query_function = Cvoid
const MPI_Type_copy_attr_function = Cvoid
const MPI_Type_delete_attr_function = Cvoid
const MPI_User_function = Cvoid
const MPI_Win_copy_attr_function = Cvoid
const MPI_Win_delete_attr_function = Cvoid
const MPI_Win_errhandler_function = Cvoid
const MPI_Win_errhandler_fn = MPI_Win_errhandler_function


# Run-time constants

@const_ref MPI_ANY_SOURCE Cint -2
@const_ref MPI_ANY_TAG    Cint -1
@const_ref MPI_PROC_NULL  Cint -1
@const_ref MPI_ROOT       Cint -3

@const_ref MPI_GRAPH      Cint 1
@const_ref MPI_CART       Cint 2
@const_ref MPI_DIST_GRAPH Cint 3

@const_ref MPI_IDENT      Cint 0
@const_ref MPI_CONGRUENT  Cint 1
@const_ref MPI_SIMILAR    Cint 2
@const_ref MPI_UNEQUAL    Cint 3

@const_ref MPI_KEYVAL_INVALID     Cint 0x24000000
@const_ref MPI_UNDEFINED          Cint -32766

@const_ref MPI_TAG_UB             Cint 0x64400001
@const_ref MPI_HOST               Cint 0x64400003
@const_ref MPI_IO                 Cint 0x64400005
@const_ref MPI_WTIME_IS_GLOBAL    Cint 0x64400007
@const_ref MPI_UNIVERSE_SIZE      Cint 0x64400009
@const_ref MPI_LASTUSEDCODE       Cint 0x6440000b
@const_ref MPI_APPNUM             Cint 0x6440000d

@const_ref MPI_WIN_BASE           Cint 0x66000001
@const_ref MPI_WIN_SIZE           Cint 0x66000003
@const_ref MPI_WIN_DISP_UNIT      Cint 0x66000005
@const_ref MPI_WIN_CREATE_FLAVOR  Cint 0x66000007
@const_ref MPI_WIN_MODEL          Cint 0x66000009

@const_ref MPI_COMBINER_NAMED            Cint 1
@const_ref MPI_COMBINER_DUP              Cint 2
@const_ref MPI_COMBINER_CONTIGUOUS       Cint 3
@const_ref MPI_COMBINER_VECTOR           Cint 4
@const_ref MPI_COMBINER_HVECTOR_INTEGER  Cint 5
@const_ref MPI_COMBINER_HVECTOR          Cint 6
@const_ref MPI_COMBINER_INDEXED          Cint 7
@const_ref MPI_COMBINER_HINDEXED_INTEGER Cint 8
@const_ref MPI_COMBINER_HINDEXED         Cint 9
@const_ref MPI_COMBINER_INDEXED_BLOCK    Cint 10
@const_ref MPI_COMBINER_STRUCT_INTEGER   Cint 11
@const_ref MPI_COMBINER_STRUCT           Cint 12
@const_ref MPI_COMBINER_SUBARRAY         Cint 13
@const_ref MPI_COMBINER_DARRAY           Cint 14
@const_ref MPI_COMBINER_F90_REAL         Cint 15
@const_ref MPI_COMBINER_F90_COMPLEX      Cint 16
@const_ref MPI_COMBINER_F90_INTEGER      Cint 17
@const_ref MPI_COMBINER_RESIZED          Cint 18
@const_ref MPI_COMBINER_HINDEXED_BLOCK   Cint 19

@const_ref MPI_COMM_TYPE_SHARED Cint 1

@const_ref MPI_DISTRIBUTE_BLOCK Cint 121
@const_ref MPI_DISTRIBUTE_CYCLIC Cint 122
@const_ref MPI_DISTRIBUTE_NONE Cint 123

@const_ref MPI_SUCCESS                   Cint  0
@const_ref MPI_ERR_BUFFER                Cint  1
@const_ref MPI_ERR_COUNT                 Cint  2
@const_ref MPI_ERR_TYPE                  Cint  3
@const_ref MPI_ERR_TAG                   Cint  4
@const_ref MPI_ERR_COMM                  Cint  5
@const_ref MPI_ERR_RANK                  Cint  6
@const_ref MPI_ERR_ROOT                  Cint  7
@const_ref MPI_ERR_TRUNCATE              Cint 14
@const_ref MPI_ERR_GROUP                 Cint  8
@const_ref MPI_ERR_OP                    Cint  9
@const_ref MPI_ERR_REQUEST               Cint 19
@const_ref MPI_ERR_TOPOLOGY              Cint 10
@const_ref MPI_ERR_DIMS                  Cint 11
@const_ref MPI_ERR_ARG                   Cint 12
@const_ref MPI_ERR_OTHER                 Cint 15
@const_ref MPI_ERR_UNKNOWN               Cint 13
@const_ref MPI_ERR_INTERN                Cint 16
@const_ref MPI_ERR_IN_STATUS             Cint 17
@const_ref MPI_ERR_PENDING               Cint 18
@const_ref MPI_ERR_ACCESS                Cint 20
@const_ref MPI_ERR_AMODE                 Cint 21
@const_ref MPI_ERR_BAD_FILE              Cint 22
@const_ref MPI_ERR_CONVERSION            Cint 23
@const_ref MPI_ERR_DUP_DATAREP           Cint 24
@const_ref MPI_ERR_FILE_EXISTS           Cint 25
@const_ref MPI_ERR_FILE_IN_USE           Cint 26
@const_ref MPI_ERR_FILE                  Cint 27
@const_ref MPI_ERR_IO                    Cint 32
@const_ref MPI_ERR_NO_SPACE              Cint 36
@const_ref MPI_ERR_NO_SUCH_FILE          Cint 37
@const_ref MPI_ERR_READ_ONLY             Cint 40
@const_ref MPI_ERR_UNSUPPORTED_DATAREP   Cint 43
@const_ref MPI_ERR_INFO                  Cint 28
@const_ref MPI_ERR_INFO_KEY              Cint 29
@const_ref MPI_ERR_INFO_VALUE            Cint 30
@const_ref MPI_ERR_INFO_NOKEY            Cint 31
@const_ref MPI_ERR_NAME                  Cint 33
@const_ref MPI_ERR_NO_MEM                Cint 34
@const_ref MPI_ERR_NOT_SAME              Cint 35
@const_ref MPI_ERR_PORT                  Cint 38
@const_ref MPI_ERR_QUOTA                 Cint 39
@const_ref MPI_ERR_SERVICE               Cint 41
@const_ref MPI_ERR_SPAWN                 Cint 42
@const_ref MPI_ERR_UNSUPPORTED_OPERATION Cint 44
@const_ref MPI_ERR_WIN                   Cint 45
@const_ref MPI_ERR_BASE                  Cint 46
@const_ref MPI_ERR_LOCKTYPE              Cint 47
@const_ref MPI_ERR_KEYVAL                Cint 48
@const_ref MPI_ERR_RMA_CONFLICT          Cint 49
@const_ref MPI_ERR_RMA_SYNC              Cint 50
@const_ref MPI_ERR_SIZE                  Cint 51
@const_ref MPI_ERR_DISP                  Cint 52
@const_ref MPI_ERR_ASSERT                Cint 53


@const_ref MPI_LOCK_EXCLUSIVE Cint 234
@const_ref MPI_LOCK_SHARED    Cint 235


@const_ref MPI_MODE_CREATE           Cint 0x00000001
@const_ref MPI_MODE_RDONLY           Cint 0x00000002
@const_ref MPI_MODE_WRONLY           Cint 0x00000004
@const_ref MPI_MODE_RDWR             Cint 0x00000008
@const_ref MPI_MODE_DELETE_ON_CLOSE  Cint 0x00000010
@const_ref MPI_MODE_UNIQUE_OPEN      Cint 0x00000020
@const_ref MPI_MODE_EXCL             Cint 0x00000040
@const_ref MPI_MODE_APPEND           Cint 0x00000080
@const_ref MPI_MODE_SEQUENTIAL       Cint 0x00000100


@const_ref MPI_MODE_NOCHECK          Cint  1024
@const_ref MPI_MODE_NOSTORE          Cint  2048
@const_ref MPI_MODE_NOPUT            Cint  4096
@const_ref MPI_MODE_NOPRECEDE        Cint  8192
@const_ref MPI_MODE_NOSUCCEED        Cint 16384

@const_ref MPI_ORDER_C       Cint 56
@const_ref MPI_ORDER_FORTRAN Cint 57


@const_ref MPI_SEEK_SET Cint 600
@const_ref MPI_SEEK_CUR Cint 602
@const_ref MPI_SEEK_END Cint 604

@const_ref MPI_THREAD_SINGLE Cint 0
@const_ref MPI_THREAD_FUNNELED Cint 1
@const_ref MPI_THREAD_SERIALIZED Cint 2
@const_ref MPI_THREAD_MULTIPLE Cint 3

@const_ref MPI_TYPECLASS_REAL Cint 1
@const_ref MPI_TYPECLASS_INTEGER Cint 2
@const_ref MPI_TYPECLASS_COMPLEX Cint 3

@const_ref MPI_ARGV_NULL      Ptr{Cvoid} C_NULL
@const_ref MPI_ARGVS_NULL     Ptr{Cvoid} C_NULL

@const_ref MPI_UNWEIGHTED     Ptr{Cint} 1
@const_ref MPI_WEIGHTS_EMPTY  Ptr{Cint} 2
@const_ref MPI_BOTTOM         Ptr{Cvoid} 0
@const_ref MPI_IN_PLACE       Ptr{Cvoid} -1

@const_ref MPI_COMM_NULL  MPI_Comm 0x04000000
@const_ref MPI_COMM_SELF  MPI_Comm 0x44000001
@const_ref MPI_COMM_WORLD MPI_Comm 0x44000000

@const_ref MPI_COMM_DUP_FN           Ptr{MPI_Comm_copy_attr_function}   cglobal((:MPIR_Dup_fn, libmpi), Ptr{MPI_Comm_copy_attr_function})
@const_ref MPI_COMM_NULL_COPY_FN     Ptr{MPI_Comm_copy_attr_function}   C_NULL
@const_ref MPI_COMM_NULL_DELETE_FN   Ptr{MPI_Comm_delete_attr_function} C_NULL

@const_ref MPI_DATATYPE_NULL MPI_Datatype 0x0c000000

# Only define C constants, as we don't need the Fortran or C++ ones (and Fortran ones are compiler-dependent).

@const_ref MPI_CHAR                MPI_Datatype 0x4c000101
@const_ref MPI_UNSIGNED_CHAR       MPI_Datatype 0x4c000102
@const_ref MPI_SHORT               MPI_Datatype 0x4c000203
@const_ref MPI_UNSIGNED_SHORT      MPI_Datatype 0x4c000204
@const_ref MPI_INT                 MPI_Datatype 0x4c000405
@const_ref MPI_UNSIGNED            MPI_Datatype 0x4c000406
@const_ref MPI_LONG                MPI_Datatype 0x4c000407
@const_ref MPI_UNSIGNED_LONG       MPI_Datatype 0x4c000408
@const_ref MPI_LONG_LONG_INT       MPI_Datatype 0x4c000809
const MPI_LONG_LONG = MPI_LONG_LONG_INT
@const_ref MPI_FLOAT               MPI_Datatype 0x4c00040a
@const_ref MPI_DOUBLE              MPI_Datatype 0x4c00080b
@const_ref MPI_LONG_DOUBLE         MPI_Datatype 0x4c00080c
@const_ref MPI_BYTE                MPI_Datatype 0x4c00010d
@const_ref MPI_WCHAR               MPI_Datatype 0x4c00020e

@const_ref MPI_PACKED              MPI_Datatype 0x4c00010f
@const_ref MPI_LB                  MPI_Datatype 0x4c000010
@const_ref MPI_UB                  MPI_Datatype 0x4c000011

@const_ref MPI_C_COMPLEX              MPI_Datatype 0x4c000812
@const_ref MPI_C_FLOAT_COMPLEX        MPI_Datatype 0x4c000813
@const_ref MPI_C_DOUBLE_COMPLEX       MPI_Datatype 0x4c001014
@const_ref MPI_C_LONG_DOUBLE_COMPLEX  MPI_Datatype 0x4c001015

@const_ref MPI_2INT                   MPI_Datatype 0x4c000816
@const_ref MPI_C_BOOL                 MPI_Datatype 0x4c000117
@const_ref MPI_SIGNED_CHAR            MPI_Datatype 0x4c000118
@const_ref MPI_UNSIGNED_LONG_LONG     MPI_Datatype 0x4c000819

@const_ref MPI_INT8_T                 MPI_Datatype 0x4c000133
@const_ref MPI_INT16_T                MPI_Datatype 0x4c000234
@const_ref MPI_INT32_T                MPI_Datatype 0x4c000435
@const_ref MPI_INT64_T                MPI_Datatype 0x4c000836
@const_ref MPI_UINT8_T                MPI_Datatype 0x4c000137
@const_ref MPI_UINT16_T               MPI_Datatype 0x4c000238
@const_ref MPI_UINT32_T               MPI_Datatype 0x4c000439
@const_ref MPI_UINT64_T               MPI_Datatype 0x4c00083a

@const_ref MPI_AINT                   MPI_Datatype MPI_Aint == Int64 ? 0x4c00083b : 0x4c00043b
@const_ref MPI_OFFSET                 MPI_Datatype 0x4c00083c
@const_ref MPI_COUNT                  MPI_Datatype 0x4c00083d

@const_ref MPI_FLOAT_INT              MPI_Datatype 0x8c000000
@const_ref MPI_DOUBLE_INT             MPI_Datatype 0x8c000001
@const_ref MPI_LONG_INT               MPI_Datatype 0x8c000002
@const_ref MPI_SHORT_INT              MPI_Datatype 0x8c000003
@const_ref MPI_LONG_DOUBLE_INT        MPI_Datatype 0x8c000004

@const_ref MPI_ERRHANDLER_NULL MPI_Errhandler 0x14000000
@const_ref MPI_ERRORS_ARE_FATAL MPI_Errhandler 0x54000000
@const_ref MPI_ERRORS_RETURN MPI_Errhandler 0x54000001
#@const_ref MPI_ERRORS_ABORT MPI_Errhandler 0x54000003

@const_ref MPI_FILE_NULL MPI_File 0

@const_ref MPI_GROUP_EMPTY MPI_Group 0x48000000
@const_ref MPI_GROUP_NULL MPI_Group 0x08000000

# @const_ref MPI_INFO_ENV MPI_Info 0x5c00000
@const_ref MPI_INFO_NULL MPI_Info 0x1c000000

@const_ref MPI_MESSAGE_NULL    MPI_Message 0x30000000
@const_ref MPI_MESSAGE_NO_PROC MPI_Message 0x70000000

@const_ref MPI_DISPLACEMENT_CURRENT MPI_Offset -54278278

@const_ref MPI_OP_NULL MPI_Op 0x18000000
@const_ref MPI_MAX     MPI_Op 0x58000001
@const_ref MPI_MIN     MPI_Op 0x58000002
@const_ref MPI_SUM     MPI_Op 0x58000003
@const_ref MPI_PROD    MPI_Op 0x58000004
@const_ref MPI_LAND    MPI_Op 0x58000005
@const_ref MPI_BAND    MPI_Op 0x58000006
@const_ref MPI_LOR     MPI_Op 0x58000007
@const_ref MPI_BOR     MPI_Op 0x58000008
@const_ref MPI_LXOR    MPI_Op 0x58000009
@const_ref MPI_BXOR    MPI_Op 0x5800000a
@const_ref MPI_MINLOC  MPI_Op 0x5800000b
@const_ref MPI_MAXLOC  MPI_Op 0x5800000c
@const_ref MPI_REPLACE MPI_Op 0x5800000d
@const_ref MPI_NO_OP   MPI_Op 0x5800000e

@const_ref MPI_REQUEST_NULL MPI_Request 0x2c000000

@const_ref MPI_STATUS_IGNORE    Ptr{Cvoid} 1
@const_ref MPI_STATUSES_IGNORE  Ptr{Cvoid} 1

@const_ref MPI_TYPE_DUP_FN          Ptr{MPI_Comm_copy_attr_function}   cglobal((:MPIR_Dup_fn, libmpi), Ptr{MPI_Comm_copy_attr_function})
@const_ref MPI_TYPE_NULL_COPY_FN    Ptr{MPI_Type_copy_attr_function}   C_NULL
@const_ref MPI_TYPE_NULL_DELETE_FN  Ptr{MPI_Type_delete_attr_function} C_NULL

@const_ref MPI_WIN_NULL MPI_Win 0x20000000

@const_ref MPI_WIN_DUP_FN           Ptr{MPI_Win_copy_attr_function}   cglobal((:MPIR_Dup_fn, libmpi), Ptr{MPI_Win_copy_attr_function})
@const_ref MPI_WIN_NULL_COPY_FN     Ptr{MPI_Win_copy_attr_function}   C_NULL
@const_ref MPI_WIN_NULL_DELETE_FN   Ptr{MPI_Win_delete_attr_function} C_NULL

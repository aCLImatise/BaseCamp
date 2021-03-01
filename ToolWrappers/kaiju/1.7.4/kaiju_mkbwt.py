from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Kaiju_Mkbwt_V0_1_0 = CommandToolBuilder(tool="kaiju_mkbwt", base_command=["kaiju-mkbwt"], inputs=[ToolInput(tag="in_out_filename", input_type=Boolean(optional=True), prefix="-outfilename", doc=InputDocumentation(doc="(string)\nName of output. Several files with different extensions are produced\n(if not given, input file name is used).\nValue:  NULL (null)")), ToolInput(tag="in_alphabet", input_type=Boolean(optional=True), prefix="-Alphabet", doc=InputDocumentation(doc="(string)\nAlphabet used. Must end with the sequence terminator. Instead of alphabet\nyou can specify DNA, RNA or protein, in which case the alphabet is ACGT,\nACGU, or ACDEFGHIKLMNPQRSTVWYX\nValue:  protein")), ToolInput(tag="in_n_threads", input_type=Boolean(optional=True), prefix="-nThreads", doc=InputDocumentation(doc="(integer)\nNumber of threads\nValue:  2")), ToolInput(tag="in_length", input_type=Boolean(optional=True), prefix="-length", doc=InputDocumentation(doc="(double)\nLength of concatenated sequence in millions (one decimal, round up).\nUsed when reading from stdin. If file name is given, length is estimated\nfrom file size and length needs not be specified.\nValue:  0.000000")), ToolInput(tag="in_checkpoint", input_type=Boolean(optional=True), prefix="-checkpoint", doc=InputDocumentation(doc="(integer)\nExponent for suffix array checkpoints. There is a checkpoint for every\n2^e points. Value around 5 is a good compromise between speed and space.\nValue:  5")), ToolInput(tag="in_case_sens", input_type=Boolean(optional=True), prefix="-caseSens", doc=InputDocumentation(doc="The sequence is read case sensitive\nValue: OFF")), ToolInput(tag="in_rev_comp", input_type=Boolean(optional=True), prefix="-revComp", doc=InputDocumentation(doc="Reverse complement sequence. Works only for DNA.\nValue: OFF")), ToolInput(tag="in_term", input_type=Boolean(optional=True), prefix="-term", doc=InputDocumentation(doc="(string)\nTerminating symbol (only used for debugging)\nValue:  *")), ToolInput(tag="in_rev_sort", input_type=Boolean(optional=True), prefix="-revsort", doc=InputDocumentation(doc="The termination symbols sorts as reverse sequences. This will make the\nBWT more compressible.\nValue: OFF"))], outputs=[], container="quay.io/biocontainers/kaiju:1.7.4--h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kaiju_Mkbwt_V0_1_0().translate("wdl")


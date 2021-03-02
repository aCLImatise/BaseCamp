from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Lib_Test_Pl_V0_1_0 = CommandToolBuilder(tool="lib_test.pl", base_command=["lib-test.pl"], inputs=[ToolInput(tag="in_genome", input_type=Boolean(optional=True), prefix="-genome", doc=InputDocumentation(doc="[file]  FASTA format genome sequence")), ToolInput(tag="in_std", input_type=File(optional=True), prefix="-std", doc=InputDocumentation(doc="[file]  RepeatMasker .out file of the standard library")), ToolInput(tag="in_tst", input_type=File(optional=True), prefix="-tst", doc=InputDocumentation(doc="[file]  RepeatMasker .out file of the test library")), ToolInput(tag="in_cat", input_type=Boolean(optional=True), prefix="-cat", doc=InputDocumentation(doc="[string]        Testing TE category. Use one of LTR|nonLTR|LINE|SINE|TIR|MITE|Helitron|Total|Classified")), ToolInput(tag="in_include_ns_defaule", input_type=Boolean(optional=True), prefix="-N", doc=InputDocumentation(doc="[0|1]   Include Ns in total length of the genome. Defaule: 0 (not include Ns).")), ToolInput(tag="in_unknown", input_type=Boolean(optional=True), prefix="-unknown", doc=InputDocumentation(doc="[0|1]   Include unknown annotations to the testing category. This should be used when\nthe test library has no classification and you assume they all belong to the\ntarget category specified by -cat. Default: 0 (not include unknowns)")), ToolInput(tag="in_rand", input_type=Boolean(optional=True), prefix="-rand", doc=InputDocumentation(doc="[int]   A randum number used to identify the current run. (default: generate automatically)")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="-threads", doc=InputDocumentation(doc="[int]   Number of threads to run this program. Default: 4"))], outputs=[ToolOutput(tag="out_std", output_type=File(optional=True), selector=InputSelector(input_to_select="in_std", type_hint=File()), doc=OutputDocumentation(doc="[file]  RepeatMasker .out file of the standard library")), ToolOutput(tag="out_tst", output_type=File(optional=True), selector=InputSelector(input_to_select="in_tst", type_hint=File()), doc=OutputDocumentation(doc="[file]  RepeatMasker .out file of the test library"))], container="quay.io/biocontainers/edta:1.9.6--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lib_Test_Pl_V0_1_0().translate("wdl")


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Svjedi_Py_V0_1_0 = CommandToolBuilder(tool="svjedi.py", base_command=["svjedi.py"], inputs=[ToolInput(tag="in_vcf", input_type=File(optional=True), prefix="--vcf", doc=InputDocumentation(doc="vcf format")), ToolInput(tag="in_ref", input_type=File(optional=True), prefix="--ref", doc=InputDocumentation(doc="fasta format")), ToolInput(tag="in_allele", input_type=File(optional=True), prefix="--allele", doc=InputDocumentation(doc="fasta format")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="genotype output file")), ToolInput(tag="in_dover", input_type=String(optional=True), prefix="-dover", doc=InputDocumentation(doc="breakpoint distance overlap")), ToolInput(tag="in_d_end", input_type=Int(optional=True), prefix="-dend", doc=InputDocumentation(doc="soft clipping length allowed for semi global")), ToolInput(tag="in_min_support", input_type=Int(optional=True), prefix="--minsupport", doc=InputDocumentation(doc="Minimum number of alignments to genotype a SV\n(default: 3>=)")), ToolInput(tag="in_d", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="[<seq data type>], --data [<seq data type>]")), ToolInput(tag="in_reads", input_type=String(), position=0, doc=InputDocumentation(doc="-p <paffile>, --paf <paffile>")), ToolInput(tag="in_a_ling_ments", input_type=String(), position=0, doc=InputDocumentation(doc="-ladj <allele_size>   Sequence allele adjacencies at each side of the SV"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="genotype output file"))], container="quay.io/biocontainers/svjedi:1.1.4--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svjedi_Py_V0_1_0().translate("wdl")


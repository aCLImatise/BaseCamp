from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Vsnp_Step1_Py_V0_1_0 = CommandToolBuilder(tool="vSNP_step1.py", base_command=["vSNP_step1.py"], inputs=[ToolInput(tag="in_read_one", input_type=Int(optional=True), prefix="--read1", doc=InputDocumentation(doc="Required: single read, R1 when Illumina read")), ToolInput(tag="in_read_two", input_type=Int(optional=True), prefix="--read2", doc=InputDocumentation(doc="Optional: R2 Illumina read")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Optional: Provide reference option or FASTA file. If\nneither are given, no -r option, then a\nTB/Brucella/paraTB best reference are searched")), ToolInput(tag="in_gbk", input_type=File(optional=True), prefix="--gbk", doc=InputDocumentation(doc="Optional: gbk to annotate VCF file")), ToolInput(tag="in_table", input_type=Boolean(optional=True), prefix="--table", doc=InputDocumentation(doc="See reference options")), ToolInput(tag="in_group", input_type=String(optional=True), prefix="--group", doc=InputDocumentation(doc="Optional: group output via best_reference.py, ie\nspecify TB or Bruc which initials spoligo or MLST\ngeneration")), ToolInput(tag="in_skip_assembly", input_type=Boolean(optional=True), prefix="--skip_assembly", doc=InputDocumentation(doc="Optional: skip assembly of unmapped reads")), ToolInput(tag="in_prog", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vsnp_Step1_Py_V0_1_0().translate("wdl", allow_empty_container=True)


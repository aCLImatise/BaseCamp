from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, Boolean

Run_Metasv_Bed2Vcf_Py_V0_1_0 = CommandToolBuilder(tool="run_metasv_bed2vcf.py", base_command=["run_metasv_bed2vcf.py"], inputs=[ToolInput(tag="in_sample", input_type=String(optional=True), prefix="--sample", doc=InputDocumentation(doc="Sample name (default: None)")), ToolInput(tag="in_bed", input_type=String(optional=True), prefix="--bed", doc=InputDocumentation(doc="MetaSV final BED (default: None)")), ToolInput(tag="in_vcf", input_type=String(optional=True), prefix="--vcf", doc=InputDocumentation(doc="Final VCF to output (default: None)")), ToolInput(tag="in_reference", input_type=String(optional=True), prefix="--reference", doc=InputDocumentation(doc="Reference FASTA (default: None)")), ToolInput(tag="in_work", input_type=Directory(optional=True), prefix="--work", doc=InputDocumentation(doc="Work directory (default: work)")), ToolInput(tag="in_pass_only", input_type=Boolean(optional=True), prefix="--pass_only", doc=InputDocumentation(doc="Output only PASS calls (default: False)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Metasv_Bed2Vcf_Py_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Vsnp_Merge_Vcf_Into_Fasta_Py_V0_1_0 = CommandToolBuilder(tool="vsnp_merge_vcf_into_fasta.py", base_command=["vsnp_merge_vcf_into_fasta.py"], inputs=[ToolInput(tag="in_fast_a_file", input_type=File(optional=True), prefix="--fasta_file", doc=InputDocumentation(doc="REQUIRED: In file to be processed")), ToolInput(tag="in_vcf_file", input_type=File(optional=True), prefix="--vcf_file", doc=InputDocumentation(doc="REQUIRED: In file to be processed")), ToolInput(tag="in_qual_threshold", input_type=String(optional=True), prefix="--qual_threshold", doc=InputDocumentation(doc="OPTIONAL: QUAL values below this value will not be\napplied.")), ToolInput(tag="in_map_threshold", input_type=String(optional=True), prefix="--map_threshold", doc=InputDocumentation(doc="OPTIONAL: Map Quality values below this value will not\nbe applied.")), ToolInput(tag="in_ambiguity_not", input_type=Boolean(optional=True), prefix="--ambiguity_NOT", doc=InputDocumentation(doc="OPTIONAL: when -a used ambiguity will not be applied.\nBy default it will be applied.")), ToolInput(tag="in_r", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_prog", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_merge_vcf_into_fasta_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vsnp_Merge_Vcf_Into_Fasta_Py_V0_1_0().translate("wdl", allow_empty_container=True)


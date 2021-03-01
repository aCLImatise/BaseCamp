from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Similarity_Pyseer_V0_1_0 = CommandToolBuilder(tool="similarity_pyseer", base_command=["similarity_pyseer"], inputs=[ToolInput(tag="in_km_ers", input_type=File(optional=True), prefix="--kmers", doc=InputDocumentation(doc="Kmers file")), ToolInput(tag="in_vcf", input_type=File(optional=True), prefix="--vcf", doc=InputDocumentation(doc="VCF file. Will filter any non 'PASS' sites")), ToolInput(tag="in_pres", input_type=String(optional=True), prefix="--pres", doc=InputDocumentation(doc="Presence/absence .Rtab matrix as produced by roary and")), ToolInput(tag="in_max_af", input_type=Int(optional=True), prefix="--max-af", doc=InputDocumentation(doc="Maximum AF [Default: 0.99]")), ToolInput(tag="in_max_missing", input_type=Int(optional=True), prefix="--max-missing", doc=InputDocumentation(doc="Maximum missing (vcf/Rtab) [Default: 0.05]")), ToolInput(tag="in_uncompressed", input_type=Boolean(optional=True), prefix="--uncompressed", doc=InputDocumentation(doc="Uncompressed kmers file [Default: gzipped]")), ToolInput(tag="in_piggy", input_type=String(), position=0, doc=InputDocumentation(doc="--min-af MIN_AF       Minimum AF [Default: 0.01]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Similarity_Pyseer_V0_1_0().translate("wdl", allow_empty_container=True)


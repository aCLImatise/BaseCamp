from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Cyvcf2_V0_1_0 = CommandToolBuilder(tool="cyvcf2", base_command=["cyvcf2"], inputs=[ToolInput(tag="in_chrom", input_type=String(optional=True), prefix="--chrom", doc=InputDocumentation(doc="Specify what chromosome to include.")), ToolInput(tag="in_start", input_type=Int(optional=True), prefix="--start", doc=InputDocumentation(doc="Specify the start of region.")), ToolInput(tag="in_end", input_type=Int(optional=True), prefix="--end", doc=InputDocumentation(doc="Specify the end of the region.")), ToolInput(tag="in_include", input_type=String(optional=True), prefix="--include", doc=InputDocumentation(doc="Specify what info field to include.")), ToolInput(tag="in_exclude", input_type=String(optional=True), prefix="--exclude", doc=InputDocumentation(doc="Specify what info field to exclude.")), ToolInput(tag="in_individual", input_type=String(optional=True), prefix="--individual", doc=InputDocumentation(doc="Only print genotype call for individual.")), ToolInput(tag="in_no_inds", input_type=Boolean(optional=True), prefix="--no-inds", doc=InputDocumentation(doc="Do not print genotypes.")), ToolInput(tag="in_loglevel", input_type=Boolean(optional=True), prefix="--loglevel", doc=InputDocumentation(doc="[DEBUG|INFO|WARNING|ERROR|CRITICAL]\nSet the level of log output.  [default:\nINFO]")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="Skip printing of vcf.")), ToolInput(tag="in_vcf_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_or", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/cyvcf2:0.30.6--py27h22a6d1c_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cyvcf2_V0_1_0().translate("wdl")


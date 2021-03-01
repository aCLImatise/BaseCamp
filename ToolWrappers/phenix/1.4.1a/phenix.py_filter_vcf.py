from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, String, Boolean

Phenix_Py_Filter_Vcf_V0_1_0 = CommandToolBuilder(tool="phenix.py_filter_vcf", base_command=["phenix.py", "filter_vcf"], inputs=[ToolInput(tag="in_vcf", input_type=File(optional=True), prefix="--vcf", doc=InputDocumentation(doc="VCF file to (re)filter.")), ToolInput(tag="in_filters", input_type=Float(optional=True), prefix="--filters", doc=InputDocumentation(doc="Filter(s) to apply as key:threshold pairs, separated\nby comma. Recommendations: GATK:\nmq_score:30,min_depth:10,ad_ratio:0.9 Mpileup:\nmq_score:30,min_depth:10,dp4_ratio:0.9")), ToolInput(tag="in_config", input_type=String(optional=True), prefix="--config", doc=InputDocumentation(doc="Config with filters in YAML format.\nE.g.filters:-key:value")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="Location for filtered VCF to be written.")), ToolInput(tag="in_reference", input_type=Float(optional=True), prefix="--reference", doc=InputDocumentation(doc="mpileup version <= 1.3 do not output all positions.\nThis is required to fix rfrence base in VCF.")), ToolInput(tag="in_only_good", input_type=Boolean(optional=True), prefix="--only-good", doc=InputDocumentation(doc="Write only variants that PASS all filters (default all\nvariants are written).\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phenix_Py_Filter_Vcf_V0_1_0().translate("wdl", allow_empty_container=True)


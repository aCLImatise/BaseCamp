from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Phyluce_Snp_Convert_Vcf_To_Structure_V0_1_0 = CommandToolBuilder(tool="phyluce_snp_convert_vcf_to_structure", base_command=["phyluce_snp_convert_vcf_to_structure"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="The VCF file to process")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The STRUCTURE file to write")), ToolInput(tag="in_filter_identical", input_type=Boolean(optional=True), prefix="--filter-identical", doc=InputDocumentation(doc="Remove sites with only a single genotype.")), ToolInput(tag="in_filter_informative", input_type=Boolean(optional=True), prefix="--filter-informative", doc=InputDocumentation(doc="Remove uninformative sites."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Snp_Convert_Vcf_To_Structure_V0_1_0().translate("wdl", allow_empty_container=True)


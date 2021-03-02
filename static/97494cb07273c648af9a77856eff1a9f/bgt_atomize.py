from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Bgt_Atomize_V0_1_0 = CommandToolBuilder(tool="bgt_atomize", base_command=["bgt", "atomize"], inputs=[ToolInput(tag="in_bcf_output", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="BCF output")), ToolInput(tag="in_vcf_input", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="VCF input")), ToolInput(tag="in_list_contig_names", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="list of contig names and lengths (force -S)")), ToolInput(tag="in_use_m_multiallelic", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc="use <M> at a multi-allelic site (override -0)")), ToolInput(tag="in_use_multiallelic_genotype", input_type=Boolean(optional=True), prefix="-0", doc=InputDocumentation(doc="use 0 at a multi-allelic genotype")), ToolInput(tag="in_in_dot_bcf", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bgt_Atomize_V0_1_0().translate("wdl", allow_empty_container=True)


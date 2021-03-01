from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Paladin_Index_V0_1_0 = CommandToolBuilder(tool="paladin_index", base_command=["paladin", "index"], inputs=[ToolInput(tag="in_enable_indexing_frames", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Enable indexing all frames in nucleotide references")), ToolInput(tag="in_reference_type_reference", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="<#>  Reference type:\n1: Reference contains nucleotide sequences (requires corresponding .gff annotation)\n2: Reference contains nucleotide sequences (coding only, eg curated transcriptome)\n3: Reference contains protein sequences (UniProt or other source)\n4: Development tests")), ToolInput(tag="in_reference_dot_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_annotation_dot_gff", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Paladin_Index_V0_1_0().translate("wdl", allow_empty_container=True)


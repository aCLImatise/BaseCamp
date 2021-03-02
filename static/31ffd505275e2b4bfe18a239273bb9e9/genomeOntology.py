from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Genomeontology_V0_1_0 = CommandToolBuilder(tool="genomeOntology", base_command=["genomeOntology"], inputs=[ToolInput(tag="in_given_maximum_distance", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="<#|given> (Maximum distance between peak centers to consider, default: 100)\nUsing '-d given' looks for literal overlaps in peak regions, and calculates\nsignificance based on the total overlap in bp between peaks/annotations\nUse '-d given' when features have vastly different sizes (i.e. introns vs. peaks)")), ToolInput(tag="in_file", input_type=File(optional=True), prefix="-file", doc=InputDocumentation(doc="(file listing peak files to compare - for lots of peak files)")), ToolInput(tag="in_g_size", input_type=Boolean(optional=True), prefix="-gsize", doc=InputDocumentation(doc="<#> (Genome size for significance calculations, default: 2e9)")), ToolInput(tag="in_primary_peak_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genomeontology_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String, Float

Sketchy_Collect_V0_1_0 = CommandToolBuilder(tool="sketchy_collect", base_command=["sketchy", "collect"], inputs=[ToolInput(tag="in_directory", input_type=File(optional=True), prefix="--directory", doc=InputDocumentation(doc="Path to directory to collect {prefix}.data.tsv")), ToolInput(tag="in_next_flow", input_type=Boolean(optional=True), prefix="--nextflow", doc=InputDocumentation(doc="Predictions are from Sketchy Nextflow")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Prefix for summary files [summary]")), ToolInput(tag="in_subset", input_type=String(optional=True), prefix="--subset", doc=InputDocumentation(doc="When using Nextflow use a subset string for\nspecific configurationsof ranks & reads: 10,1000 -\nor a sample prefix: isolate1  [None]")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Genotype matrix in same format as output containing\nfeature truths")), ToolInput(tag="in_heat_map", input_type=Boolean(optional=True), prefix="--heatmap", doc=InputDocumentation(doc="Visualize results as heatmap")), ToolInput(tag="in_time", input_type=Boolean(optional=True), prefix="--time", doc=InputDocumentation(doc="Parse the time enhanced output files for Nextflow")), ToolInput(tag="in_threshold", input_type=Float(optional=True), prefix="--threshold", doc=InputDocumentation(doc="Apply threshold value to median preference score\nsummary; values below are set to 0 [0.6]")), ToolInput(tag="in_statistics", input_type=Boolean(optional=True), prefix="--statistics", doc=InputDocumentation(doc="Read the *.filtered.stats.txt files from the\nNextflow output and summarise by prefix.")), ToolInput(tag="in_scale", input_type=Float(optional=True), prefix="--scale", doc=InputDocumentation(doc="Scale plot sizes [1.0]")), ToolInput(tag="in_coverage", input_type=Boolean(optional=True), prefix="--coverage", doc=InputDocumentation(doc="Collect coverage information *.coverage.txt from\nCoverM in Nextflow")), ToolInput(tag="in_image_format", input_type=String(optional=True), prefix="--image_format", doc=InputDocumentation(doc="Output image format [pdf]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sketchy_Collect_V0_1_0().translate("wdl", allow_empty_container=True)


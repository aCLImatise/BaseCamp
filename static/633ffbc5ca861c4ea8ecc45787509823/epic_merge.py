from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, Boolean, File, Int

Epic_Merge_V0_1_0 = CommandToolBuilder(tool="epic_merge", base_command=["epic-merge"], inputs=[ToolInput(tag="in_matrixes", input_type=Array(t=String(), optional=True), prefix="--matrixes", doc=InputDocumentation(doc="epic-count matrixes to merge.")), ToolInput(tag="in_regions", input_type=Array(t=String(), optional=True), prefix="--regions", doc=InputDocumentation(doc="Bed file(s) with regions to use. Does not work with\n--keep-nonenriched.")), ToolInput(tag="in_keep_non_enriched", input_type=Boolean(optional=True), prefix="--keep-nonenriched", doc=InputDocumentation(doc="Keep non-enriched bins also (takes much more\ntime/mem). Not usable with --regions.")), ToolInput(tag="in_enriched_per_file", input_type=Boolean(optional=True), prefix="--enriched-per-file", doc=InputDocumentation(doc="Keep a column of enrichment info per matrix used.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path to write gzipped output matrix.")), ToolInput(tag="in_number_cores", input_type=Int(optional=True), prefix="--number-cores", doc=InputDocumentation(doc="Number of cpus to use. Can use at most one per\nchromosome. Default: 1.\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Path to write gzipped output matrix."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Epic_Merge_V0_1_0().translate("wdl", allow_empty_container=True)


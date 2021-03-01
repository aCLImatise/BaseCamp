from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, String, Int

Debarcer_Call_V0_1_0 = CommandToolBuilder(tool="debarcer_call", base_command=["debarcer", "call"], inputs=[ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--Outdir", doc=InputDocumentation(doc="Output directory where subdirectories are created")), ToolInput(tag="in_config", input_type=File(optional=True), prefix="--Config", doc=InputDocumentation(doc="Path to the config file")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--Reference", doc=InputDocumentation(doc="Path to the refeence genome")), ToolInput(tag="in_ref_threshold", input_type=String(optional=True), prefix="--RefThreshold", doc=InputDocumentation(doc="Maximum reference frequency to consider (in percent)\nalternative variants (ie. position with ref freq <=\nref_threshold is considered variable)")), ToolInput(tag="in_alternative_threshold", input_type=String(optional=True), prefix="--AlternativeThreshold", doc=InputDocumentation(doc="Minimum allele frequency (in percent) to consider an\nalternative allele at a variable position (ie. allele\nfreq >= alt_threshold and ref freq <= ref_threshold:\nalternative allele)")), ToolInput(tag="in_filter_threshold", input_type=Int(optional=True), prefix="--FilterThreshold", doc=InputDocumentation(doc="Minimum number of reads to pass alternative variants\n(ie. filter = PASS if variant depth >= alt_threshold)")), ToolInput(tag="in_fam_size", input_type=Int(optional=True), prefix="--Famsize", doc=InputDocumentation(doc="Minimum UMI family size\n"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory where subdirectories are created"))], container="quay.io/biocontainers/debarcer:2.1.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Debarcer_Call_V0_1_0().translate("wdl")


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Abyss_Index_V0_1_0 = CommandToolBuilder(tool="abyss_index", base_command=["abyss-index"], inputs=[ToolInput(tag="in_both", input_type=Boolean(optional=True), prefix="--both", doc=InputDocumentation(doc="build both FAI and FM indexes [default]")), ToolInput(tag="in_fai", input_type=Boolean(optional=True), prefix="--fai", doc=InputDocumentation(doc="build a FAI index")), ToolInput(tag="in_fm", input_type=Boolean(optional=True), prefix="--fm", doc=InputDocumentation(doc="build a FM index")), ToolInput(tag="in_fa_two_bwt", input_type=Boolean(optional=True), prefix="--fa2bwt", doc=InputDocumentation(doc="build the BWT directly without the SA")), ToolInput(tag="in_bwt_two_fm", input_type=Boolean(optional=True), prefix="--bwt2fm", doc=InputDocumentation(doc="build the FM index from the BWT")), ToolInput(tag="in_alphabet", input_type=String(optional=True), prefix="--alphabet", doc=InputDocumentation(doc="use the alphabet STRING [-ACGT]")), ToolInput(tag="in_alpha", input_type=Boolean(optional=True), prefix="--alpha", doc=InputDocumentation(doc="equivalent to -a' ABCDEFGHIJKLMNOPQRSTUVWXYZ'")), ToolInput(tag="in_dna", input_type=Boolean(optional=True), prefix="--dna", doc=InputDocumentation(doc="equivalent to -a'-ACGT'")), ToolInput(tag="in_protein", input_type=Boolean(optional=True), prefix="--protein", doc=InputDocumentation(doc="equivalent to -a'#*ACDEFGHIKLMNPQRSTVWY'")), ToolInput(tag="in_sample", input_type=Int(optional=True), prefix="--sample", doc=InputDocumentation(doc="sample the suffix array [16]")), ToolInput(tag="in_decompress", input_type=Boolean(optional=True), prefix="--decompress", doc=InputDocumentation(doc="decompress the index FILE")), ToolInput(tag="in_stdout", input_type=Boolean(optional=True), prefix="--stdout", doc=InputDocumentation(doc="write output to standard output")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output"))], outputs=[], container="quay.io/biocontainers/abyss:2.3.0--ha4ec83a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abyss_Index_V0_1_0().translate("wdl")


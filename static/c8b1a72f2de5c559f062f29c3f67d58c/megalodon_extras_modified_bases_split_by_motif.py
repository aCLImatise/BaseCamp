from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

Megalodon_Extras_Modified_Bases_Split_By_Motif_V0_1_0 = CommandToolBuilder(tool="megalodon_extras_modified_bases_split_by_motif", base_command=["megalodon_extras", "modified_bases", "split_by_motif"], inputs=[ToolInput(tag="in_motif", input_type=Boolean(optional=True), prefix="--motif", doc=InputDocumentation(doc="['MOTIF', 'REL_POS'] ['MOTIF', 'REL_POS']\nMotif description. Motifs include two values\nspecifying the sequence motif (may include ambiguity\ncodes) and the relative modified position. Multiple\n`--motif` values may be provided.")), ToolInput(tag="in_megalodon_directory", input_type=Directory(optional=True), prefix="--megalodon-directory", doc=InputDocumentation(doc="Megalodon output directory containing per-read\nmodified base database to be split. Default:\nmegalodon_results")), ToolInput(tag="in_output_suffix", input_type=Directory(optional=True), prefix="--output-suffix", doc=InputDocumentation(doc="Suffix to apply to log (stored in input directory).\nDefault: split_by_motif")), ToolInput(tag="in_output_prefix", input_type=Directory(optional=True), prefix="--output-prefix", doc=InputDocumentation(doc="Prefix for output directories. One directory will be\ncreated for each motif with names [--output-\nprefix].[--motif]. Default:\nmegalodon_results.split_by_motif\n"))], outputs=[ToolOutput(tag="out_megalodon_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_megalodon_directory", type_hint=File()), doc=OutputDocumentation(doc="Megalodon output directory containing per-read\nmodified base database to be split. Default:\nmegalodon_results")), ToolOutput(tag="out_output_prefix", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_prefix", type_hint=File()), doc=OutputDocumentation(doc="Prefix for output directories. One directory will be\ncreated for each motif with names [--output-\nprefix].[--motif]. Default:\nmegalodon_results.split_by_motif\n"))], container="quay.io/biocontainers/megalodon:2.2.10--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megalodon_Extras_Modified_Bases_Split_By_Motif_V0_1_0().translate("wdl")


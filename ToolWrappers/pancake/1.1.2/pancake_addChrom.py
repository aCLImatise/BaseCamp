from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Array, String, Boolean, Int

Pancake_Addchrom_V0_1_0 = CommandToolBuilder(tool="pancake_addChrom", base_command=["pancake", "addChrom"], inputs=[ToolInput(tag="in_pan_file", input_type=File(optional=True), prefix="--panfile", doc=InputDocumentation(doc="Name of PanCake Data Object File (required)")), ToolInput(tag="in_sequences", input_type=Array(t=String(), optional=True), prefix="--sequences", doc=InputDocumentation(doc="fasta or multiple fasta file providing input\nchromosome sequences")), ToolInput(tag="in_ids", input_type=Array(t=String(), optional=True), prefix="--ids", doc=InputDocumentation(doc="gi ids of sequences to download from NCBI")), ToolInput(tag="in_email", input_type=String(optional=True), prefix="--email", doc=InputDocumentation(doc="if downloading your sequences via gi ids, please\nspecify your email address; in case of excessive\nusage, NCBI will attempt to contact a user at the\ne-mail address provided prior to blocking access to\nthe E-utilities")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output file for new PanCake Object (DEFAULT=PAN_FILE);\nif specified, PanCake Data Object in PAN_FILE stays\nunchanged")), ToolInput(tag="in_ali", input_type=Boolean(optional=True), prefix="--ali", doc=InputDocumentation(doc="[ALI [ALI ...]], -a [ALI [ALI ...]]\npairwise alignments (BLAST or nucmer output) to\ninclude in PanCake Object")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--min_len", doc=InputDocumentation(doc="minimum length of pairwise alignments to include\n(DEFUALT=25)")), ToolInput(tag="in_no_self_alignments", input_type=Boolean(optional=True), prefix="--no_self_alignments", doc=InputDocumentation(doc="if set, skip pairwise alignments between regions on\nidentical chromosomes as input (DEFAULT=False)\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output file for new PanCake Object (DEFAULT=PAN_FILE);\nif specified, PanCake Data Object in PAN_FILE stays\nunchanged"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pancake_Addchrom_V0_1_0().translate("wdl", allow_empty_container=True)


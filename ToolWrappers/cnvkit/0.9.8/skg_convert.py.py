from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Int

Skg_Convert_Py_V0_1_0 = CommandToolBuilder(tool="skg_convert.py", base_command=["skg_convert.py"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output filename. [Default: stdout]")), ToolInput(tag="in_from", input_type=String(optional=True), prefix="--from", doc=InputDocumentation(doc="Input format. [Default: auto-detect]")), ToolInput(tag="in_to", input_type=String(optional=True), prefix="--to", doc=InputDocumentation(doc="Output format. [Required]")), ToolInput(tag="in_flatten", input_type=Boolean(optional=True), prefix="--flatten", doc=InputDocumentation(doc="Flatten overlapping regions, keeping original\nboundaries. Not recommended with --exons.")), ToolInput(tag="in_merge", input_type=Boolean(optional=True), prefix="--merge", doc=InputDocumentation(doc="[BASEPAIRS]   Merge overlapping regions with different names.\nRecommended with --exons. Optional argument value is\nthe number of overlapping bases between two regions to\ntrigger a merge. [Default: 1]")), ToolInput(tag="in_gff_tag", input_type=String(optional=True), prefix="--gff-tag", doc=InputDocumentation(doc="GFF attributes tag to use for gene names.")), ToolInput(tag="in_gff_type", input_type=Int(optional=True), prefix="--gff-type", doc=InputDocumentation(doc="GFF record type (column 3) to use exclusively. E.g.\nfor GFF3 files, 'exon', 'gene', and other SOFA terms\ncan be used here.")), ToolInput(tag="in_ref_flat_type", input_type=String(optional=True), prefix="--refflat-type", doc=InputDocumentation(doc="Emit each exon instead of the whole gene regions.\n")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="Input filename. [Default: stdin]"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output filename. [Default: stdout]"))], container="quay.io/biocontainers/cnvkit:0.9.8--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Skg_Convert_Py_V0_1_0().translate("wdl")


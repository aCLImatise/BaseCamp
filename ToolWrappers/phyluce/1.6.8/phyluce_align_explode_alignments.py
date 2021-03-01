from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, File, Array, Boolean

Phyluce_Align_Explode_Alignments_V0_1_0 = CommandToolBuilder(tool="phyluce_align_explode_alignments", base_command=["phyluce_align_explode_alignments"], inputs=[ToolInput(tag="in_alignments", input_type=Directory(optional=True), prefix="--alignments", doc=InputDocumentation(doc="Input folder of alignments")), ToolInput(tag="in_output_folder_fasta", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="Output folder of fasta files")), ToolInput(tag="in_input_format", input_type=String(optional=True), prefix="--input-format", doc=InputDocumentation(doc="The input alignment format")), ToolInput(tag="in_conf", input_type=File(optional=True), prefix="--conf", doc=InputDocumentation(doc="Config file for renaming")), ToolInput(tag="in_section", input_type=File(optional=True), prefix="--section", doc=InputDocumentation(doc="Section of config file to use")), ToolInput(tag="in_exclude", input_type=Array(t=String(), optional=True), prefix="--exclude", doc=InputDocumentation(doc="Taxa/taxon to exclude")), ToolInput(tag="in_by_tax_on", input_type=Boolean(optional=True), prefix="--by-taxon", doc=InputDocumentation(doc="Explode file by taxon instead of by-locus")), ToolInput(tag="in_include_locus", input_type=Boolean(optional=True), prefix="--include-locus", doc=InputDocumentation(doc="Include the locus name in the FASTA header")), ToolInput(tag="in_var_8", input_type=String(), position=0, doc=InputDocumentation(doc="[--input-format {fasta,nexus,phylip,clustal,emboss,stockholm}]"))], outputs=[ToolOutput(tag="out_output_folder_fasta", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_folder_fasta", type_hint=File()), doc=OutputDocumentation(doc="Output folder of fasta files"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Align_Explode_Alignments_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, Directory, String, Boolean

Pan_Genome_Core_Alignment_V0_1_0 = CommandToolBuilder(tool="pan_genome_core_alignment", base_command=["pan_genome_core_alignment"], inputs=[ToolInput(tag="in_output_filename", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output filename [core_gene_alignment.aln]")), ToolInput(tag="in_cd", input_type=Float(optional=True), prefix="-cd", doc=InputDocumentation(doc="percentage of isolates a gene must be in to be core [99]")), ToolInput(tag="in_directory_containing_gene", input_type=Directory(optional=True), prefix="-m", doc=InputDocumentation(doc="directory containing gene multi-FASTAs [pan_genome_sequences]")), ToolInput(tag="in_gene_presence_absence", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="gene presence and absence spreadsheet [gene_presence_absence.csv]")), ToolInput(tag="in_allow_paralogs", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="allow paralogs")), ToolInput(tag="in_delete_intermediate_files", input_type=Boolean(optional=True), prefix="-z", doc=InputDocumentation(doc="dont delete intermediate files")), ToolInput(tag="in_verbose_output_stdout", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose output to STDOUT"))], outputs=[ToolOutput(tag="out_output_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_filename", type_hint=File()), doc=OutputDocumentation(doc="output filename [core_gene_alignment.aln]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pan_Genome_Core_Alignment_V0_1_0().translate("wdl", allow_empty_container=True)


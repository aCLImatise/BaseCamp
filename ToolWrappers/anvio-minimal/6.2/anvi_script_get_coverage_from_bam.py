from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Anvi_Script_Get_Coverage_From_Bam_V0_1_0 = CommandToolBuilder(tool="anvi_script_get_coverage_from_bam", base_command=["anvi-script-get-coverage-from-bam"], inputs=[ToolInput(tag="in_bam_file", input_type=File(optional=True), prefix="--bam-file", doc=InputDocumentation(doc="Sorted and indexed BAM file to analyze.")), ToolInput(tag="in_contig_name", input_type=String(optional=True), prefix="--contig-name", doc=InputDocumentation(doc="The name of a single contig")), ToolInput(tag="in_contigs_of_interest", input_type=File(optional=True), prefix="--contigs-of-interest", doc=InputDocumentation(doc="Provide here a file where each line is a contig name.")), ToolInput(tag="in_collection_txt", input_type=File(optional=True), prefix="--collection-txt", doc=InputDocumentation(doc="Provide a collection text file. The first column\nshould be contig names and the second column should be\nthe bin to which the contig belongs. If you have a\ncollection from a profile database, you can export it\nin this format with anvi-export-collection.")), ToolInput(tag="in_method", input_type=String(optional=True), prefix="--method", doc=InputDocumentation(doc="If pos, each nucleotide position will be reported\n(valid for OPTION #1, #2, #3). If contig, report\ncontains contig averages (valid for OPTION #2, #3). If\nbin, report contains bin averages (valid for OPTION\n#3).")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output tab-delimited file path. Will overwrite\nexisting files.")), ToolInput(tag="in_skip_contigs_check", input_type=Boolean(optional=True), prefix="--skip-contigs-check", doc=InputDocumentation(doc="Checking to see that your collection text or contigs\nof interest file has correct names can take a really\nlong time if you have a large enough number of\ncontigs. Use this flag to forego checking, and find\nout the hard way.\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output tab-delimited file path. Will overwrite\nexisting files."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Script_Get_Coverage_From_Bam_V0_1_0().translate("wdl", allow_empty_container=True)


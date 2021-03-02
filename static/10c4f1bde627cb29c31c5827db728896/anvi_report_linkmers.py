from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Anvi_Report_Linkmers_V0_1_0 = CommandToolBuilder(tool="anvi_report_linkmers", base_command=["anvi-report-linkmers"], inputs=[ToolInput(tag="in_s_sorted_files", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="(S) [INPUT_BAM(S) ...], --input-files INPUT_BAM(S) [INPUT_BAM(S) ...]\nSorted and indexed BAM files to analyze. It is\nessential that all BAM files must be the result of\nmappings against the same contigs. (default: None)")), ToolInput(tag="in_contigs_and_positions", input_type=File(optional=True), prefix="--contigs-and-positions", doc=InputDocumentation(doc="This is the file where you list the contigs, and\nnucleotide positions you are interested in. This is\nsupposed to be a TAB-delimited file with two columns.\nIn each line, the first column should be the contig\nname, and the second column should be the comma-\nseparated list of integers for nucleotide positions.\n(default: None)")), ToolInput(tag="in_only_complete_links", input_type=Boolean(optional=True), prefix="--only-complete-links", doc=InputDocumentation(doc="When declared, only reads that cover all positions\nwill be reported. It is necessary to use this flag if\nyou want to perform oligotyping-like analyses on\nmatching reads. (default: False)")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="File path to store results. (default: None)")), ToolInput(tag="in_list_contigs", input_type=Boolean(optional=True), prefix="--list-contigs", doc=InputDocumentation(doc="When declared, the program will list contigs in the\nBAM file and exit gracefully without any further\nanalysis. (default: False)")), ToolInput(tag="in_bam_file", input_type=File(), position=0, doc=InputDocumentation(doc="🍕 Can provide: ")), ToolInput(tag="in_link_mers_txt", input_type=String(), position=1, doc=InputDocumentation(doc="🍺 More on `anvi-report-linkmers`:"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="File path to store results. (default: None)"))], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Report_Linkmers_V0_1_0().translate("wdl")


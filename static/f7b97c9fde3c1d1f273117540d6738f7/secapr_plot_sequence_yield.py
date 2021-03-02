from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Int, String

Secapr_Plot_Sequence_Yield_V0_1_0 = CommandToolBuilder(tool="secapr_plot_sequence_yield", base_command=["secapr", "plot_sequence_yield"], inputs=[ToolInput(tag="in_extracted_contigs", input_type=Directory(optional=True), prefix="--extracted_contigs", doc=InputDocumentation(doc="The directory containing the extracted target contigs\n(output from find_target_contigs function).")), ToolInput(tag="in_alignments", input_type=File(optional=True), prefix="--alignments", doc=InputDocumentation(doc="The directory containing the contig alignments.\nProvide this path if you want to add a line to the\nplot showing for which loci alignments could be\ncreated.")), ToolInput(tag="in_read_cov", input_type=File(optional=True), prefix="--read_cov", doc=InputDocumentation(doc="The directory containing the reference assembly\nresults. Provide this path if you want to display the\nread coverage for each locus and sample.")), ToolInput(tag="in_coverage_norm", input_type=Int(optional=True), prefix="--coverage_norm", doc=InputDocumentation(doc="Here you can adjust the color scale of the read-\ncoverage plot. This value will define the maximum of\nthe color scale, e.g. if set to '10' read-coverage of\n10 and above will be colored black, while everything\nbelow (0-10) will be stretched across the color\nspectrum from yellow, red to black.")), ToolInput(tag="in_directory_store_plots", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The directory in which to store the plots.")), ToolInput(tag="in_plot_overview_extracted", input_type=String(), position=0, doc=InputDocumentation(doc="Plot overview of extracted sequences"))], outputs=[ToolOutput(tag="out_extracted_contigs", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_extracted_contigs", type_hint=File()), doc=OutputDocumentation(doc="The directory containing the extracted target contigs\n(output from find_target_contigs function)."))], container="quay.io/biocontainers/secapr:2.1.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Secapr_Plot_Sequence_Yield_V0_1_0().translate("wdl")


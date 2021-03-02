from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Float, Boolean, String

Pan_Genome_Assembly_Statistics_V0_1_0 = CommandToolBuilder(tool="pan_genome_assembly_statistics", base_command=["pan_genome_assembly_statistics"], inputs=[ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="number of threads [1]")), ToolInput(tag="in_output_filename", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output filename [assembly_statistics.csv]")), ToolInput(tag="in_cd", input_type=Float(optional=True), prefix="-cd", doc=InputDocumentation(doc="percentage of isolates a gene must be in to be core [99]")), ToolInput(tag="in_verbose_output_stdout", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose output to STDOUT")), ToolInput(tag="in_print_version_exit", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="print version and exit")), ToolInput(tag="in_gene_presence_absence_dot_csv", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_filename", type_hint=File()), doc=OutputDocumentation(doc="output filename [assembly_statistics.csv]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pan_Genome_Assembly_Statistics_V0_1_0().translate("wdl", allow_empty_container=True)


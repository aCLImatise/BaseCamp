from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Motus_Map_Tax_V0_1_0 = CommandToolBuilder(tool="motus_map_tax", base_command=["motus", "map_tax"], inputs=[ToolInput(tag="in_input_files_reads_forward_formatted", input_type=File(), prefix="-f", doc=InputDocumentation(doc="input file(s) for reads in forward orientation, fastq formatted")), ToolInput(tag="in_input_files_reads_reverse_formatted", input_type=File(), prefix="-r", doc=InputDocumentation(doc="input file(s) for reads in reverse orientation, fastq formatted")), ToolInput(tag="in_input_files_reads_mate_formatted", input_type=File(), prefix="-s", doc=InputDocumentation(doc="input file(s) for reads without mate, fastq formatted")), ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output file name [stdout]")), ToolInput(tag="in_save_result_bwa", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="save the result of bwa in bam format")), ToolInput(tag="in_min_length_alignment", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="min. length of alignment for the reads (number of nucleotides) [75]")), ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads [1]")), ToolInput(tag="in_verbose_level_error", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose level: 1=error, 2=warning, 3=message, 4+=debugging [3]"))], outputs=[ToolOutput(tag="out_output_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc="output file name [stdout]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Motus_Map_Tax_V0_1_0().translate("wdl", allow_empty_container=True)


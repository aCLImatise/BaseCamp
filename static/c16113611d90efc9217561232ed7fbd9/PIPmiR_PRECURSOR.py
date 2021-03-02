from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Pipmir_Precursor_V0_1_0 = CommandToolBuilder(tool="PIPmiR_PRECURSOR", base_command=["PIPmiR", "PRECURSOR"], inputs=[ToolInput(tag="in_file_putative_mirnas", input_type=File(optional=True), prefix="-b", doc=InputDocumentation(doc="File of putative miRNAs in .bed format")), ToolInput(tag="in_version_genome_reads", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc=".2bit version of the genome against which the reads were aligned")), ToolInput(tag="in_basename_output_files", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="basename of output files")), ToolInput(tag="in_minimum_size_default", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Minimum size for a precursor sequence (Default: 50)")), ToolInput(tag="in_maximum_size_default", input_type=Int(optional=True), prefix="-L", doc=InputDocumentation(doc="Maximum size for a precursor sequence (Default: 500)")), ToolInput(tag="in_step_size_default", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="Step size for calculating precursor sequence (Default: 2)")), ToolInput(tag="in_number_threads_pipmir", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="Number of threads the PIPmiR can use (Default: 1)")), ToolInput(tag="in_maximum_amount_memory", input_type=Int(optional=True), prefix="-X", doc=InputDocumentation(doc="Maximum amount of memory PIPmiR can use (Default: 4G)")), ToolInput(tag="in_location_rnafold_default", input_type=Int(optional=True), prefix="-R", doc=InputDocumentation(doc="Location of RNAfold (Default: /home/dc97/bin/RNAfold)")), ToolInput(tag="in_creates_log_file", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Creates a log file of PIPmiR results at <output_header>_log.csv"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pipmir_Precursor_V0_1_0().translate("wdl", allow_empty_container=True)


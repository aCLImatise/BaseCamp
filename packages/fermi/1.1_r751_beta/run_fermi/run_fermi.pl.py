from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Run_Fermi_Pl_V0_1_0 = CommandToolBuilder(tool="run_fermi.pl", base_command=["run-fermi.pl"], inputs=[ToolInput(tag="in_input_files_paired", input_type=Boolean(optional=True), prefix="-P", doc=InputDocumentation(doc="the input files are paired (ends in separate files)")), ToolInput(tag="in_input_collatediniterleaved_fastq", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="the input is collated/initerleaved FASTQ (two ends in the same file)")), ToolInput(tag="in_halve_number_effective", input_type=Boolean(optional=True), prefix="-D", doc=InputDocumentation(doc="halve the number of jobs for building the split index (effective with -B)")), ToolInput(tag="in_use_original_algorithm", input_type=Boolean(optional=True), prefix="-B", doc=InputDocumentation(doc="use the original algorithm for constructing FMD-index (default is BCR)")), ToolInput(tag="in_skip_error_correction", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="skip error correction")), ToolInput(tag="in_fermi_executable", input_type=File(optional=True), prefix="-e", doc=InputDocumentation(doc="fermi executable [fermi]")), ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads [2]")), ToolInput(tag="in_prefix_output_files", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="prefix of output files [fmdef]")), ToolInput(tag="in_trim_reads_int", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="trim reads to INT bp after error correction [inf]")), ToolInput(tag="in_minimum_overlap", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="minimum overlap [50]")), ToolInput(tag="in_more_options", input_type=Boolean(optional=True), prefix="-MORE_OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_in_one_dot_fq", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Fermi_Pl_V0_1_0().translate("wdl", allow_empty_container=True)


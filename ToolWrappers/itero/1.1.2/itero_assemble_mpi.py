from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean, Directory

Itero_Assemble_Mpi_V0_1_0 = CommandToolBuilder(tool="itero_assemble_mpi", base_command=["itero", "assemble", "mpi"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="A configuration file containing reads to assemble")), ToolInput(tag="in_subfolder", input_type=String(optional=True), prefix="--subfolder", doc=InputDocumentation(doc="A subdirectory, below the level of the group,\ncontaining the reads")), ToolInput(tag="in_iterations", input_type=Int(optional=True), prefix="--iterations", doc=InputDocumentation(doc="The number of iterations to run for each locus")), ToolInput(tag="in_local_cores", input_type=Int(optional=True), prefix="--local-cores", doc=InputDocumentation(doc="The number of cores to use on the main node")), ToolInput(tag="in_clean", input_type=Boolean(optional=True), prefix="--clean", doc=InputDocumentation(doc="Cleanup all intermediate files")), ToolInput(tag="in_only_single_locus", input_type=Boolean(optional=True), prefix="--only-single-locus", doc=InputDocumentation(doc="Assemble only to a single contig")), ToolInput(tag="in_allow_multiple_contigs", input_type=Boolean(optional=True), prefix="--allow-multiple-contigs", doc=InputDocumentation(doc="Allow assembly stages to produce multiple contigs")), ToolInput(tag="in_do_not_zip", input_type=Boolean(optional=True), prefix="--do-not-zip", doc=InputDocumentation(doc="Do not zip the iteration files, which is the default")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs.")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="The directory in which to store the output")), ToolInput(tag="in_behavior_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--verbosity {INFO,WARN,CRITICAL}"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The directory in which to store the output"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Itero_Assemble_Mpi_V0_1_0().translate("wdl", allow_empty_container=True)


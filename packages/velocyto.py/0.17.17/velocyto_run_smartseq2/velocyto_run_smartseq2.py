from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Int, Boolean, String

Velocyto_Run_Smartseq2_V0_1_0 = CommandToolBuilder(tool="velocyto_run_smartseq2", base_command=["velocyto", "run-smartseq2"], inputs=[ToolInput(tag="in_output_folder", input_type=Directory(optional=True), prefix="--outputfolder", doc=InputDocumentation(doc="Output folder, if it does not exist it will be created.")), ToolInput(tag="in_sample_id", input_type=File(optional=True), prefix="--sampleid", doc=InputDocumentation(doc="The sample name that will be used as a the filename of the output.")), ToolInput(tag="in_rep_mask", input_type=File(optional=True), prefix="--repmask", doc=InputDocumentation(doc=".gtf file containing intervals to mask")), ToolInput(tag="in_d_type", input_type=File(optional=True), prefix="--dtype", doc=InputDocumentation(doc="The dtype of the loom file layers - if more than 6000 molecules/reads per gene per cell are expected set uint32 to avoid truncation (default in run_smartseq2: uint32)")), ToolInput(tag="in_dump", input_type=Int(optional=True), prefix="--dump", doc=InputDocumentation(doc="For debugging purposes only: it will dump a molecular mapping report to hdf5. --dump N, saves a cell every N cells. If p is prepended a more complete (but huge) pickle report is printed (default: 0)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Set the verbosity level: -v (only warnings) -vv (warnings and info) -vvv (warnings, info and debug)")), ToolInput(tag="in_bam_files_dot_dot_dot", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_gtf_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_folder", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_folder", type_hint=File()), doc=OutputDocumentation(doc="Output folder, if it does not exist it will be created.")), ToolOutput(tag="out_sample_id", output_type=File(optional=True), selector=InputSelector(input_to_select="in_sample_id", type_hint=File()), doc=OutputDocumentation(doc="The sample name that will be used as a the filename of the output."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Velocyto_Run_Smartseq2_V0_1_0().translate("wdl", allow_empty_container=True)


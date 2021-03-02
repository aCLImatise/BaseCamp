from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Directory, Int

Minimize_Pdb_Py_V0_1_0 = CommandToolBuilder(tool="minimize_pdb.py", base_command=["minimize_pdb.py"], inputs=[ToolInput(tag="in_input_pdb_file", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="Input PDB file")), ToolInput(tag="in_topologie_gromacs_format", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="Topologie in gromacs format .top")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="Output Directory")), ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="-n", doc=InputDocumentation(doc="Output file name")), ToolInput(tag="in_m_steps", input_type=Int(optional=True), prefix="-m_steps", doc=InputDocumentation(doc="Minimisation nsteps, default=1000")), ToolInput(tag="in_box", input_type=String(optional=True), prefix="-box", doc=InputDocumentation(doc="Create a box, default=False")), ToolInput(tag="in_nt", input_type=Int(optional=True), prefix="-nt", doc=InputDocumentation(doc="Total number of threads to start, default=0")), ToolInput(tag="in_nt_mpi", input_type=Int(optional=True), prefix="-ntmpi", doc=InputDocumentation(doc="Number of thread-MPI threads to start, default=0")), ToolInput(tag="in_gpu_id", input_type=String(optional=True), prefix="-gpu_id", doc=InputDocumentation(doc="List of GPU device id-s to use, default=''"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Output Directory")), ToolOutput(tag="out_output_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc="Output file name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Minimize_Pdb_Py_V0_1_0().translate("wdl", allow_empty_container=True)


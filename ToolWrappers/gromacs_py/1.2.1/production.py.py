from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Directory, Int, Float

Production_Py_V0_1_0 = CommandToolBuilder(tool="production.py", base_command=["production.py"], inputs=[ToolInput(tag="in_input_pdb_file", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="Input PDB file")), ToolInput(tag="in_topologie_gromacs_format", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="Topologie in gromacs format .top")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="Output Directory")), ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="-n", doc=InputDocumentation(doc="Output file name")), ToolInput(tag="in_time", input_type=Int(optional=True), prefix="-time", doc=InputDocumentation(doc="Production time, default=10")), ToolInput(tag="in_dt", input_type=Float(optional=True), prefix="-dt", doc=InputDocumentation(doc="Equilibration dt, default=0.005 (5 fs)")), ToolInput(tag="in_nt", input_type=Int(optional=True), prefix="-nt", doc=InputDocumentation(doc="Total number of threads to start, default=0")), ToolInput(tag="in_nt_mpi", input_type=Int(optional=True), prefix="-ntmpi", doc=InputDocumentation(doc="Number of thread-MPI threads to start, default=0")), ToolInput(tag="in_gpu_id", input_type=String(optional=True), prefix="-gpu_id", doc=InputDocumentation(doc="List of GPU device id-s to use, default=''"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Output Directory")), ToolOutput(tag="out_output_file_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_name", type_hint=File()), doc=OutputDocumentation(doc="Output file name"))], container="quay.io/biocontainers/gromacs_py:1.2.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Production_Py_V0_1_0().translate("wdl")


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Run_Bowtie_Py_V0_1_0 = CommandToolBuilder(tool="run_bowtie.py", base_command=["run_bowtie.py"], inputs=[ToolInput(tag="in_bis_map", input_type=Boolean(optional=True), prefix="-Bismap", doc=InputDocumentation(doc="Run bowtie with --norc")), ToolInput(tag="in_var_id", input_type=String(optional=True), prefix="-var_id", doc=InputDocumentation(doc="HPC environmental variable for JOB ID")), ToolInput(tag="in_job_id", input_type=File(optional=True), prefix="-job_id", doc=InputDocumentation(doc="1-based index for selecting a k-mer file")), ToolInput(tag="in_km_er_dir", input_type=String(), position=0, doc=InputDocumentation(doc="Directory containing the .kmer files")), ToolInput(tag="in_bowtie_dir", input_type=String(), position=1, doc=InputDocumentation(doc="Directory containing bowtie executable")), ToolInput(tag="in_index_dir", input_type=String(), position=2, doc=InputDocumentation(doc="Directory containing bowtie index")), ToolInput(tag="in_index_name", input_type=String(), position=3, doc=InputDocumentation(doc="prefix name of bowtie index"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Bowtie_Py_V0_1_0().translate("wdl", allow_empty_container=True)


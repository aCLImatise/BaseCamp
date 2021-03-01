from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Unify_Bowtie_Py_V0_1_0 = CommandToolBuilder(tool="unify_bowtie.py", base_command=["unify_bowtie.py"], inputs=[ToolInput(tag="in_job_id", input_type=Int(optional=True), prefix="-job_id", doc=InputDocumentation(doc="If not using a cluster for submitting jobs, specify the\njob_id by integer ranging from 1 to total number of\nchromosomes in chrsize_path")), ToolInput(tag="in_var_id", input_type=Int(optional=True), prefix="-var_id", doc=InputDocumentation(doc="HPC variable name for job ID (1-based index)")), ToolInput(tag="in_bowtie_outdir", input_type=String(), position=0, doc=InputDocumentation(doc="Directory containing bowtie output files")), ToolInput(tag="in_chr_size_path", input_type=String(), position=1, doc=InputDocumentation(doc="A file containing the order of chromosome names to consider\n(one chromosome name per line)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Unify_Bowtie_Py_V0_1_0().translate("wdl", allow_empty_container=True)


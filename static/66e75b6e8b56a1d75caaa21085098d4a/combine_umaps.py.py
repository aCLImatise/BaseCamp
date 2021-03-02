from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Combine_Umaps_Py_V0_1_0 = CommandToolBuilder(tool="combine_umaps.py", base_command=["combine_umaps.py"], inputs=[ToolInput(tag="in_out_dir", input_type=String(optional=True), prefix="-out_dir", doc=InputDocumentation(doc="If not specified, a subfolder will be created in\nkmer_dir names as\nglobalmap_k<smallestkmer>tok<largestkmer>")), ToolInput(tag="in_job_id", input_type=Int(optional=True), prefix="-job_id", doc=InputDocumentation(doc="1-based index for finding chromosome from")), ToolInput(tag="in_chr_size_path_dot", input_type=String(optional=True), prefix="-chrsize_path.", doc=InputDocumentation(doc="not specified, it will user -var_id")), ToolInput(tag="in_var_id", input_type=String(optional=True), prefix="-var_id", doc=InputDocumentation(doc="If -job_id is not specified, job_id will be inferred\nfrom environmental variable -var_id.")), ToolInput(tag="in_km_er_dir_two", input_type=Int(optional=True), prefix="-kmer_dir_2", doc=InputDocumentation(doc="Specify to merge kmers of two different directories by\nlogical operation AND.\n")), ToolInput(tag="in_km_er_dir", input_type=String(), position=0, doc=InputDocumentation(doc="Directory with subfolders named as k<read length>)")), ToolInput(tag="in_chr_size_path", input_type=String(), position=1, doc=InputDocumentation(doc="Path to 2 column tsv file with first column as\nchromosome and second column as its size. Will be used\nto identify order of the chromosomes."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Combine_Umaps_Py_V0_1_0().translate("wdl", allow_empty_container=True)


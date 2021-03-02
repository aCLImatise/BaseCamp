from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Get_Kmers_Py_V0_1_0 = CommandToolBuilder(tool="get_kmers.py", base_command=["get_kmers.py"], inputs=[ToolInput(tag="in_km_er", input_type=String(optional=True), prefix="--kmer", doc=InputDocumentation(doc="The software would infer it based on the name of the\n'out_dir'. If it is set and contradicts the 'out_dir', a\nsubfolder under out_dir will be created named 'kmer' and\nout_dir will be changed to that.")), ToolInput(tag="in_job_id", input_type=Int(optional=True), prefix="--job_id", doc=InputDocumentation(doc="If not submitted in job array, would require this parameter\nto be set. (1-based index)")), ToolInput(tag="in_var_id", input_type=String(optional=True), prefix="--var_id", doc=InputDocumentation(doc="The variable name that the script would use for identifying\nthe job id. By default: SGE_TASK_ID.\n")), ToolInput(tag="in_chrom_size_path", input_type=String(), position=0, doc=InputDocumentation(doc="Path to 2 column tsv file where first column is chromosome\nname and second column is chromosome size")), ToolInput(tag="in_out_dir", input_type=String(), position=1, doc=InputDocumentation(doc="Path to the directory for creating\n<chromosome>.<Megabase>.<kmer>.kmer.gz files")), ToolInput(tag="in_chr_dir", input_type=String(), position=2, doc=InputDocumentation(doc="Path to directory with <chromosome>.fasta files.")), ToolInput(tag="in_idx_path", input_type=String(), position=3, doc=InputDocumentation(doc="Path to the 4 column file with the following columns: Index\n| Chromosome | Start | End. This file will be used for\nidentifying the chunk of the chromosome."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Kmers_Py_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Int, String

Aquila_Umap_V0_1_0 = CommandToolBuilder(tool="aquila_umap", base_command=["aquila_umap"], inputs=[ToolInput(tag="in_fa_folder", input_type=Directory(optional=True), prefix="--fa_folder", doc=InputDocumentation(doc="Required parameter; The folder path where fasta files\nare saved eg: /path/to/fasta/")), ToolInput(tag="in_fa_name", input_type=File(optional=True), prefix="--fa_name", doc=InputDocumentation(doc="Required parameter; The file name of fasta file eg:\nsample.fa")), ToolInput(tag="in_out_dir", input_type=File(optional=True), prefix="--out_dir", doc=InputDocumentation(doc="Required parameter; The output path eg:\n/path/to/result/")), ToolInput(tag="in_chr_start", input_type=Int(optional=True), prefix="--chr_start", doc=InputDocumentation(doc="chromosome start by,default = 1")), ToolInput(tag="in_chr_end", input_type=Int(optional=True), prefix="--chr_end", doc=InputDocumentation(doc="chromosome end by,default = 23")), ToolInput(tag="in_km_er_len", input_type=Int(optional=True), prefix="--kmer_len", doc=InputDocumentation(doc="The length of generated kmers,default = 100")), ToolInput(tag="in_mapq_th_res", input_type=Int(optional=True), prefix="--mapq_thres", doc=InputDocumentation(doc="The MAPQ threshold to filter bowtie2 map result,\ndefault = 20")), ToolInput(tag="in_chr_thread", input_type=Int(optional=True), prefix="--chr_thread", doc=InputDocumentation(doc="number of threads for processing chromosome, default =\n2")), ToolInput(tag="in_bowtie_thread", input_type=Int(optional=True), prefix="--bowtie_thread", doc=InputDocumentation(doc="number of threads for bowtie2 mapping, default = 10\n")), ToolInput(tag="in_use", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out_dir", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_dir", type_hint=File()), doc=OutputDocumentation(doc="Required parameter; The output path eg:\n/path/to/result/"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aquila_Umap_V0_1_0().translate("wdl", allow_empty_container=True)


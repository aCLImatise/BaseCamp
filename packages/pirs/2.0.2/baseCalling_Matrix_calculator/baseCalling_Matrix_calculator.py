from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Basecalling_Matrix_Calculator_V0_1_0 = CommandToolBuilder(tool="baseCalling_Matrix_calculator", base_command=["baseCalling_Matrix_calculator"], inputs=[ToolInput(tag="in_fasta_file_m", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc="FASTA file [[0;0m.{gz,bz2} is OK[32;1m][32;1m")), ToolInput(tag="in_snp_positions_mfilenamem", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="SNP positions from ([0;1m<filename>[32;1m) in format /^ChrID\tPos/. VCF file with only SNP is OK.[32;1m")), ToolInput(tag="in_accepted_mapq_mmm", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="accepted MAPQ ([0;1m60[32;1m)[32;1m")), ToolInput(tag="in_length_reads_m", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="length of reads ([0;1mint[32;1m) [[0;0mOptional. Specify to override auto detected value.[32;1m][32;1m")), ToolInput(tag="in_prefix_mmatrixmm", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc="prefix ([0;1m./matrix[32;1m).{count,ratio}.matrix and .{stat,info}[32;1m")), ToolInput(tag="in_list_file_m", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="list file [[0;0mto specify a subset of chromosomes, one per line[32;1m][32;1m")), ToolInput(tag="in_qascii_sam_files", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="Qascii=64 for sam files instead of 33[32;1m")), ToolInput(tag="in_chrid_match_results", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="ChrID in ref fasta file to match alignment results ([0;1mnone[32;1m) [[0;0muse RegEx for s/$ARG//;[32;1m][32;1m"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Basecalling_Matrix_Calculator_V0_1_0().translate("wdl", allow_empty_container=True)


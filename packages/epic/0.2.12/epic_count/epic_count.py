from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, Int, Boolean, File

Epic_Count_V0_1_0 = CommandToolBuilder(tool="epic_count", base_command=["epic-count"], inputs=[ToolInput(tag="in_in_files", input_type=Array(t=String(), optional=True), prefix="--infiles", doc=InputDocumentation(doc="ChIP files to count reads in (bed/bedpe format).")), ToolInput(tag="in_number_cores", input_type=Int(optional=True), prefix="--number-cores", doc=InputDocumentation(doc="Number of cpus to use. Can use at most one per\nchromosome. Default: 1.")), ToolInput(tag="in_keep_duplicates", input_type=Boolean(optional=True), prefix="--keep-duplicates", doc=InputDocumentation(doc="Keep reads mapping to the same position on the same\nstrand within a library. Default is to remove all but\nthe first duplicate.")), ToolInput(tag="in_window_size", input_type=Int(optional=True), prefix="--window-size", doc=InputDocumentation(doc="Size of the windows to scan the genome. WINDOW_SIZE is\nthe smallest possible island. Default 200.")), ToolInput(tag="in_fragment_size", input_type=Int(optional=True), prefix="--fragment-size", doc=InputDocumentation(doc="(Single end reads only) Size of the sequenced\nfragment. The center of the the fragment will be taken\nas half the fragment size. Default 150.")), ToolInput(tag="in_genome", input_type=Int(optional=True), prefix="--genome", doc=InputDocumentation(doc="Which genome to analyze. Default: hg19. If\n--chromsizes flag is given, --genome is not required.")), ToolInput(tag="in_chrom_sizes", input_type=File(optional=True), prefix="--chromsizes", doc=InputDocumentation(doc="Set the chromosome lengths yourself in a file with two\ncolumns: chromosome names and sizes. Useful to analyze\ncustom genomes, assemblies or simulated data. Only\nchromosomes included in the file will be analyzed.")), ToolInput(tag="in_file_write_matrix", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="File to write gzipped count matrix to.\n")), ToolInput(tag="in_count_reads_create", input_type=String(), position=0, doc=InputDocumentation(doc="Count reads in windows to create count matrix. (This matrix does not contain"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Epic_Count_V0_1_0().translate("wdl", allow_empty_container=True)


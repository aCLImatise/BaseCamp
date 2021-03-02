from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Build_Midas_Db_Py_V0_1_0 = CommandToolBuilder(tool="build_midas_db.py", base_command=["build_midas_db.py"], inputs=[ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use (1)")), ToolInput(tag="in_compress", input_type=Boolean(optional=True), prefix="--compress", doc=InputDocumentation(doc="Compress output files with gzip (False)")), ToolInput(tag="in_max_species", input_type=Int(optional=True), prefix="--max_species", doc=InputDocumentation(doc="Maximum number of species to process from input (use all).\nUseful for quick tests")), ToolInput(tag="in_max_genomes", input_type=Int(optional=True), prefix="--max_genomes", doc=InputDocumentation(doc="Maximum number of genomes to process per species (use all).\nUseful for quick tests\n")), ToolInput(tag="in_in_dir", input_type=String(), position=0, doc=InputDocumentation(doc="Path to directory of input genomes\nEach subdirectory should be named according to a genome_id\nEach subdirectory should contain (replace genome_id):\ngenome_id.fna: Genomic DNA sequence in FASTA format\ngenome_id.ffn: Gene DNA sequences in FASTA format\ngenome_id.faa: Translated genes in FASTA format")), ToolInput(tag="in_map_file", input_type=String(), position=1, doc=InputDocumentation(doc="Path to mapping file that specifies which genomes belonging to the same species.\nThe file should be tab-delimited file with a header and 3 fields:\ngenome_id (CHAR): corresponds to subdirectory within INDIR\nspecies_id (CHAR): species identifier for genome_id\nrep_genome (0 or 1): indicator if genome_id should be used for SNP calling")), ToolInput(tag="in_outdir", input_type=String(), position=2, doc=InputDocumentation(doc="Directory to store MIDAS database"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Build_Midas_Db_Py_V0_1_0().translate("wdl", allow_empty_container=True)


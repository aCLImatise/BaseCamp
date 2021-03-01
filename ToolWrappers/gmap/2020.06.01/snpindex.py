from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Int

Snpindex_V0_1_0 = CommandToolBuilder(tool="snpindex", base_command=["snpindex"], inputs=[ToolInput(tag="in_source_dir", input_type=Directory(optional=True), prefix="--sourcedir", doc=InputDocumentation(doc="Directory where to read genome index files (default is\nGMAP genome directory specified at compile time)")), ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc="Genome database")), ToolInput(tag="in_km_er", input_type=Int(optional=True), prefix="--kmer", doc=InputDocumentation(doc="kmer size to use in genome database (allowed values: 16 or less).\nIf not specified, the program will find the highest available\nkmer size in the genome database")), ToolInput(tag="in_sampling", input_type=Int(optional=True), prefix="--sampling", doc=InputDocumentation(doc="Sampling to use in genome database.  If not specified, the program\nwill find the smallest available sampling value in the genome database\nwithin selected k-mer size")), ToolInput(tag="in_destdir", input_type=Directory(optional=True), prefix="--destdir", doc=InputDocumentation(doc="Directory where to write SNP index files (default is\nGMAP genome directory specified at compile time)")), ToolInput(tag="in_snps_db", input_type=String(optional=True), prefix="--snpsdb", doc=InputDocumentation(doc="Name of SNP database")), ToolInput(tag="in_max_warnings", input_type=Int(optional=True), prefix="--max-warnings", doc=InputDocumentation(doc="Maximum number of warnings to print to stderr about\ninconsistencies relative to the reference genome.\nA value of 0 turns off all warnings.  A negative value\nprints all warnings.  (default -1, meaning no limit)")), ToolInput(tag="in_options_dot_dot_dot", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_i_it_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snpindex_V0_1_0().translate("wdl", allow_empty_container=True)


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Int

Cmetindex_V0_1_0 = CommandToolBuilder(tool="cmetindex", base_command=["cmetindex"], inputs=[ToolInput(tag="in_source_dir", input_type=Directory(optional=True), prefix="--sourcedir", doc=InputDocumentation(doc="Directory where to read cmet index files (default is\nGMAP genome directory specified at compile time)")), ToolInput(tag="in_destdir", input_type=Directory(optional=True), prefix="--destdir", doc=InputDocumentation(doc="Directory where to write cmet index files (default is\nvalue of -F, if provided; otherwise the value of the\nGMAP genome directory specified at compile time)")), ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc="Genome database")), ToolInput(tag="in_km_er", input_type=Int(optional=True), prefix="--kmer", doc=InputDocumentation(doc="kmer size to use in genome database (allowed values: 16 or less).\nIf not specified, the program will find the highest available\nkmer size in the genome database")), ToolInput(tag="in_sampling", input_type=Int(optional=True), prefix="--sampling", doc=InputDocumentation(doc="Sampling to use in genome database.  If not specified, the program\nwill find the smallest available sampling value in the genome database\nwithin selected basesize and k-mer size")), ToolInput(tag="in_use_snps", input_type=String(optional=True), prefix="--use-snps", doc=InputDocumentation(doc="Use database containing known SNPs (in <STRING>.iit, built\npreviously using snpindex) for tolerance to SNPs")), ToolInput(tag="in_options_dot_dot_dot", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cmetindex_V0_1_0().translate("wdl", allow_empty_container=True)


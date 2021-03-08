from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, File, Int

Gmap_Cat_V0_1_0 = CommandToolBuilder(tool="gmap_cat", base_command=["gmap_cat"], inputs=[ToolInput(tag="in_dir", input_type=Directory(optional=True), prefix="--dir", doc=InputDocumentation(doc="Destination directory for output genome index")), ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc="Output genome name")), ToolInput(tag="in_names", input_type=File(optional=True), prefix="--names", doc=InputDocumentation(doc="Substitute names for renaming contigs, provided in a file.  The file have two formats:")), ToolInput(tag="in_one_dot", input_type=Int(), position=0, doc=InputDocumentation(doc="A file with one column per line, with each line corresponding to a FASTA file, in the order\nof the input genomes.  The chromosome name for each FASTA file will be replaced with the\ndesired chromosome name in the file.  Every chromosome must have a corresponding line in the file.")), ToolInput(tag="in_two_dot", input_type=Int(), position=1, doc=InputDocumentation(doc="A file with two columns per line, separated by white space.  In each line, the original\nFASTA chromosome name should be in column 1 and the desired chromosome name will be\nin column 2.  Not every chromosome needs to be listed, which provides an easy way to change\na few chromosome names.\n"))], outputs=[ToolOutput(tag="out_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_dir", type_hint=File()), doc=OutputDocumentation(doc="Destination directory for output genome index"))], container="quay.io/biocontainers/gmap:2021.02.22--pl526h2f06484_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gmap_Cat_V0_1_0().translate("wdl")


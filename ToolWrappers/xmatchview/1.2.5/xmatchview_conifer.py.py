from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Xmatchview_Conifer_Py_V0_1_0 = CommandToolBuilder(tool="xmatchview_conifer.py", base_command=["xmatchview-conifer.py"], inputs=[ToolInput(tag="in_file_crossmatch_format", input_type=File(optional=True), prefix="-x", doc=InputDocumentation(doc="file (cross_match .rep or Pairwise mApping Format .paf)")), ToolInput(tag="in_genome_fasta_file", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc="genome fasta file")), ToolInput(tag="in_contiggenome_fasta_file", input_type=File(optional=True), prefix="-q", doc=InputDocumentation(doc="contig/genome fasta file")), ToolInput(tag="in_e", input_type=File(optional=True), prefix="-e", doc=InputDocumentation(doc="features (eg. exons) coordinates GFF tsv file (start end) - optional")), ToolInput(tag="in_y", input_type=File(optional=True), prefix="-y", doc=InputDocumentation(doc="features (eg. exons) coordinates GFF tsv file (start end) - optional")), ToolInput(tag="in_mismatch_eg_allows", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="mismatch threshold (e.g. -m 10 allows representation of repeats having up to 10% mismatch")), ToolInput(tag="in_length_bp_display", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="length (bp) of similarity block to display")), ToolInput(tag="in_pixel_basepair_scale", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="(pixel to basepair scale, for displaying the image)")), ToolInput(tag="in_tree_trunk_characters", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="for the tree trunk (6 characters or less for best result)")), ToolInput(tag="in_value_transparent_solid", input_type=Int(optional=True), prefix="-a", doc=InputDocumentation(doc="value, from 0 (transparent) to 255 (solid, default)")), ToolInput(tag="in_image_file_format", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="image file format (png, tiff, jpeg, or gif) NOTE: png and tiff recommended.")), ToolInput(tag="in_path_directory_fonts", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="path to the directory with fonts on your system (please refer to the documentation for fonts used)"))], outputs=[], container="quay.io/biocontainers/xmatchview:1.2.5--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xmatchview_Conifer_Py_V0_1_0().translate("wdl")


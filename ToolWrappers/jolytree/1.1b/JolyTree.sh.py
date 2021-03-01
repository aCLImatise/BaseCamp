from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Int, Float, Boolean, String

Jolytree_Sh_V0_1_0 = CommandToolBuilder(tool="JolyTree.sh", base_command=["JolyTree.sh"], inputs=[ToolInput(tag="in_directory_name_containing", input_type=Directory(optional=True), prefix="-i", doc=InputDocumentation(doc="directory name containing  FASTA-formatted contig files;  only files\nending with .fa, .fna, .fas or .fasta will be considered (mandatory)")), ToolInput(tag="in_basename_written_output", input_type=File(optional=True), prefix="-b", doc=InputDocumentation(doc="basename of every written output file (mandatory)")), ToolInput(tag="in_sketch_size_default", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="sketch size (default: 25% of the largest genome size)")), ToolInput(tag="in_probability_observing_default", input_type=Float(optional=True), prefix="-q", doc=InputDocumentation(doc="probability of observing a random k-mer (default: 0.0001)")), ToolInput(tag="in_kmer_size_default", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="k-mer size (default: estimated from the average genome size with the\nprobability set by option -q)")), ToolInput(tag="in_least_one_estimated", input_type=Float(optional=True), prefix="-c", doc=InputDocumentation(doc="if at least one of the estimated p-distances is above this specified\ncutoff, then a F81 correction is performed (default: 0.1)")), ToolInput(tag="in_bme_tree_inference", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="no BME tree inference (only pairwise distance estimation)")), ToolInput(tag="in_number_when_performing", input_type=Int(optional=True), prefix="-r", doc=InputDocumentation(doc="number of steps  when performing the  ratchet-based  BME tree search\n(default: 100)")), ToolInput(tag="in_number_threads_default", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads (default: 2)")), ToolInput(tag="in_joly_tree_dots_h", input_type=String(), position=0, doc=InputDocumentation(doc="[options]"))], outputs=[ToolOutput(tag="out_basename_written_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_basename_written_output", type_hint=File()), doc=OutputDocumentation(doc="basename of every written output file (mandatory)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jolytree_Sh_V0_1_0().translate("wdl", allow_empty_container=True)


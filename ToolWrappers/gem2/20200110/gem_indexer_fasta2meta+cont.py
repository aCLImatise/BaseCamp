from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Int

Gem_Indexer_Fasta2Meta_Cont_V0_1_0 = CommandToolBuilder(tool="gem_indexer_fasta2meta+cont", base_command=["gem-indexer_fasta2meta+cont"], inputs=[ToolInput(tag="in_i", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="(mandatory)")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="(mandatory)")), ToolInput(tag="in_content_type", input_type=Boolean(optional=True), prefix="--content-type", doc=InputDocumentation(doc="'dna'|'protein'\n(default='dna')")), ToolInput(tag="in_force_fmi_general_index", input_type=Boolean(optional=True), prefix="--force-fmi-general-index", doc=InputDocumentation(doc="(default: deduced from content)")), ToolInput(tag="in_filter_function", input_type=Boolean(optional=True), prefix="--filter-function", doc=InputDocumentation(doc="'iupac-dna'|'iupac-colorspace-dna'|'none'\n(default='iupac-dna')")), ToolInput(tag="in_color_space", input_type=Boolean(optional=True), prefix="--colorspace", doc=InputDocumentation(doc="(same as\n'--filter-function iupac-colorspace-dna')")), ToolInput(tag="in_strip_unknown_bases_threshold", input_type=Boolean(optional=True), prefix="--strip-unknown-bases-threshold", doc=InputDocumentation(doc="'disable'|<integer>\n(default=50 for DNA,\n'disable' for protein)")), ToolInput(tag="in_complement_size_threshold", input_type=Int(optional=True), prefix="--complement-size-threshold", doc=InputDocumentation(doc="(default=2GB)")), ToolInput(tag="in_complement", input_type=Boolean(optional=True), prefix="--complement", doc=InputDocumentation(doc="'yes'|'emulate'|'no'\n(default='yes' for DNA below threshold,\n'emulate' for DNA above threshold,\n'no' for protein)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="(default=false)")), ToolInput(tag="in_show_license", input_type=Boolean(optional=True), prefix="--show-license", doc=InputDocumentation(doc="(print license and exit)")), ToolInput(tag="in_gem_indexer_fast_a_two_meta", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/gem2:20200110--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gem_Indexer_Fasta2Meta_Cont_V0_1_0().translate("wdl")


from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Contigtax_Build_V0_1_0 = CommandToolBuilder(tool="contigtax_build", base_command=["contigtax", "build"], inputs=[ToolInput(tag="in_dbfile", input_type=File(optional=True), prefix="--dbfile", doc=InputDocumentation(doc="Name of diamond database file. Defaults to\ndiamond.dmnd in same directory as the protein fasta\nfile")), ToolInput(tag="in_cpus", input_type=Int(optional=True), prefix="--cpus", doc=InputDocumentation(doc="Number of cpus to use when building (defaults to 1)")), ToolInput(tag="in_fast_a_file", input_type=String(), position=0, doc=InputDocumentation(doc="Specify (reformatted) fasta file")), ToolInput(tag="in_taxon_map", input_type=String(), position=1, doc=InputDocumentation(doc="Protein accession to taxid mapfile (must be gzipped)")), ToolInput(tag="in_tax_on_nodes", input_type=String(), position=2, doc=InputDocumentation(doc="nodes.dmp file from NCBI taxonomy database"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Contigtax_Build_V0_1_0().translate("wdl", allow_empty_container=True)


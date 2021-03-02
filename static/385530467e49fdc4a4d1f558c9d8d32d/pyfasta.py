from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Pyfasta_V0_1_0 = CommandToolBuilder(tool="pyfasta", base_command=["pyfasta"], inputs=[ToolInput(tag="in_valid_actionavailable_actionsextract", input_type=File(optional=True), prefix="-h", doc=InputDocumentation(doc="a valid action\navailable actions:\n`extract`: extract sequences from a fasta file\n`info`: show info about the fasta file and exit.\n`split`: split a large fasta file into separate files\nand/or into K-mers.\n`flatten`: flatten a fasta file inplace so that later\ncommand-line (and programmattic) access via\npyfasta will use the inplace flattened version\nrather than creating another .flat copy of the\nsequence.\nto view the help for a particular action, use:\npyfasta [action] --help\ne.g.:\npyfasta extract --help\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyfasta_V0_1_0().translate("wdl", allow_empty_container=True)


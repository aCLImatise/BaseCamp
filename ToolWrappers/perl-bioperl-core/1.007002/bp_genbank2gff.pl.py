from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Bp_Genbank2Gff_Pl_V0_1_0 = CommandToolBuilder(tool="bp_genbank2gff.pl", base_command=["bp_genbank2gff.pl"], inputs=[ToolInput(tag="in_create", input_type=Boolean(optional=True), prefix="--create", doc=InputDocumentation(doc="Force creation and initialization of database")), ToolInput(tag="in_dsn", input_type=Boolean(optional=True), prefix="--dsn", doc=InputDocumentation(doc="<dsn>        Data source (default dbi:mysql:test)")), ToolInput(tag="in_user", input_type=Boolean(optional=True), prefix="--user", doc=InputDocumentation(doc="<user>       Username for mysql authentication")), ToolInput(tag="in_pass", input_type=Boolean(optional=True), prefix="--pass", doc=InputDocumentation(doc="<password>   Password for mysql authentication")), ToolInput(tag="in_proxy", input_type=Boolean(optional=True), prefix="--proxy", doc=InputDocumentation(doc="<proxy>      Proxy server to use for remote access")), ToolInput(tag="in_stdout", input_type=Boolean(optional=True), prefix="--stdout", doc=InputDocumentation(doc="direct output to STDOUT")), ToolInput(tag="in_adaptor", input_type=Boolean(optional=True), prefix="--adaptor", doc=InputDocumentation(doc="<adaptor>    adaptor to use (eg dbi::mysql, dbi::pg, dbi::oracle)")), ToolInput(tag="in_viral", input_type=Boolean(optional=True), prefix="--viral", doc=InputDocumentation(doc="the genome you are loading is viral (changes tag\nchoices)")), ToolInput(tag="in_source", input_type=Boolean(optional=True), prefix="--source", doc=InputDocumentation(doc="<source>     source field for features ['genbank']\nEITHER --file           Arguments that follow are Genbank/EMBL file names\nOR --gb_folder          What follows is a folder full of gb files to process\nOR --accession          Arguments that follow are genbank accession numbers\n(not gi!)\nOR --acc_file           Accession numbers (not gi!) in a file (one per line,\nno punc.)\nOR --acc_pipe           Accession numbers (not gi!) from a STDIN pipe (one\nper line)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Genbank2Gff_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

